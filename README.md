FHIR Swift Classes
==================

These are [Swift](https://developer.apple.com/swift/) classes representing data models of [FHIR](http://hl7.org/implement/standards/fhir/) resources.
Classes are generated by [fhir-parser](https://github.com/smart-on-fhir/fhir-parser).

Written in _Swift_ the classes are compatible with **iOS 7** and **OS X 10.9** and later.
Building Swift frameworks requires Xcode 6 or later.

The `master` branch is currently on _DSTU 1_.  
The `develop` branch is currently on _DSTU 2_ and WiP.


SMART on FHIR
-------------

The [SMART on FHIR](https://github.com/p2/SMART-on-FHIR-Cocoa) Cocoa framework utilizes these classes.
It also adds an implementation of this repo's _FHIRServer_ protocol to make the classes fully usable.


Progress
--------

Here's a rough list of what still needs to be done.

```
[ ] More dedicated handling of dates/times/instants
[X] Reference resolver: resolve contained resources
[ ] Reference resolver: resolve bundle-relative resources
[ ] Reference resolver: resolve remote resources
[ ] Write serializer
[ ] Validate serialized JSON?
[ ] Handle operations (especially $everything)
[ ] Handle resource versions nicely
[ ] Create a default behavior when a modifierExtension is detected
[ ] Use non-optional properties and implement failable initializers (see @smart-on-fhir/fhir-parser:feature/swift-failable-init)
[ ] Write a real nice documentation
```

Working to some extent:

- Classes generated for FHIR's base resources
    + Try to use Swift native types whenever possible
- Use a FHIR server protocol for REST interactions
- Deserialize from JSON
- Resolve contained resources
- Construct searches with NoSQL-like statements (cf. fhir.js)
- Use example resources for auto-created class unit tests


Class Generation
----------------

Class generation is achieved with our [Python FHIR parser](https://github.com/smart-on-fhir/fhir-parser).

### Verbousness

Swift is **statically typed** and introspection is _very_ limited at the time.
Therefore the generator needs to be a bit more verbose and create class-level serializers/deserializers, rather than looking at class properties at runtime and figure out how to serialize/deserialize.

### Cardinality

Some data models have properties with a cardinality of a minimum of 1.
While these can be enforced to never be nil in Swift by **not** making them _Optionals_, they are made optional to enable uniform initializers that only take a JSON dictionary.
For classes representing models with non-optional properties, a convenience initializer is supplied to reflect the need to set those properties without enforcing it.

### Contained Resources

FHIR makes use of [contained resources](http://hl7.org/implement/standards/fhir/references.html#contained).
Such properties are represented as `FHIRReference` instances, a subclass of FHIR's `Reference`.
To resolve resource references, call `resolved(ModelClass)` on a FHIRReference property, which will return an instance of the referenced type, if resolving successfully.


Search
------

There was **preliminary** support for creating search query URLs in an object-oriented way in DSTU 1.
This has since been removed in favor of the NoSQL-like approach proposed and used by [fhir.js](https://github.com/FHIR/fhir.js#search).


#### Compartments

Search can be restricted to [compartments](http://hl7.org/implement/standards/fhir/extras.html#compartment), these however are not yet supported in the SMART server nor in these classes.

```
[ ] Patient/23/procedure?date=>2010-01-01&date=<2011-12-31
```

#### Referenced (not yet implemented)

If search is restricted to a reference property, this applies:

- If the search token is merely an id, i.e. it does **not** contain a forward slash, a type restricted search is constructed based on which instance method is called:
    `GET {base-url}/Thing?referenced:InstanceType={id}`
- If the search token does contain a forward slash it is assumed to be an absolute reference and no `:InstanceType` will be appended:  
    `GET {base-url}/Thing?referenced={uri}`
