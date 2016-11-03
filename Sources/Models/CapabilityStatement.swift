//
//  CapabilityStatement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 (http://hl7.org/fhir/StructureDefinition/CapabilityStatement) on 2016-11-03.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A statement of system Capabilities.
 *
 *  A Capability Statement documents a set of capabilities (behaviors) of a FHIR Server that may be used as a statement
 *  of actual server functionality or a statement of required or desired server implementation.
 */
open class CapabilityStatement: DomainResource {
	override open class var resourceType: String {
		get { return "CapabilityStatement" }
	}
	
	/// no | extensions | elements | both.
	public var acceptUnknown: String?
	
	/// Contact details for the publisher.
	public var contact: [ContactDetail]?
	
	/// Use and/or publishing restrictions.
	public var copyright: String?
	
	/// Date this was last changed.
	public var date: DateTime?
	
	/// Natural language description of the capability statement.
	public var description_fhir: String?
	
	/// Document definition.
	public var document: [CapabilityStatementDocument]?
	
	/// If for testing purposes, not real usage.
	public var experimental: Bool?
	
	/// FHIR Version the system uses.
	public var fhirVersion: String?
	
	/// formats supported (xml | json | ttl | mime type).
	public var format: [String]?
	
	/// If this describes a specific instance.
	public var implementation: CapabilityStatementImplementation?
	
	/// Canonical URL of service implemented/used by software.
	public var instantiates: [URL]?
	
	/// Intended jurisdiction for capability statement (if applicable).
	public var jurisdiction: [CodeableConcept]?
	
	/// instance | capability | requirements.
	public var kind: String?
	
	/// If messaging is supported.
	public var messaging: [CapabilityStatementMessaging]?
	
	/// Name for this capability statement (Computer friendly).
	public var name: String?
	
	/// Profiles for use cases supported.
	public var profile: [Reference]?
	
	/// Name of the publisher (Organization or individual).
	public var publisher: String?
	
	/// Why this capability statement is defined.
	public var purpose: String?
	
	/// If the endpoint is a RESTful one.
	public var rest: [CapabilityStatementRest]?
	
	/// Software that is covered by this capability statement.
	public var software: CapabilityStatementSoftware?
	
	/// draft | active | retired.
	public var status: String?
	
	/// Name for this capability statement (Human friendly).
	public var title: String?
	
	/// Logical uri to reference this capability statement (globally unique).
	public var url: URL?
	
	/// Content intends to support these contexts.
	public var useContext: [UsageContext]?
	
	/// Business version of the capability statement.
	public var version: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(acceptUnknown: String, date: DateTime, fhirVersion: String, format: [String], kind: String, status: String) {
		self.init()
		self.acceptUnknown = acceptUnknown
		self.date = date
		self.fhirVersion = fhirVersion
		self.format = format
		self.kind = kind
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["acceptUnknown"] {
			presentKeys.insert("acceptUnknown")
			if let val = exist as? String {
				self.acceptUnknown = val
			}
			else {
				errors.append(FHIRValidationError(key: "acceptUnknown", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "acceptUnknown"))
		}
		if let exist = json["contact"] {
			presentKeys.insert("contact")
			if let val = exist as? [FHIRJSON] {
				do {
					self.contact = try ContactDetail.instantiate(fromArray: val, owner: self) as? [ContactDetail]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "contact"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["copyright"] {
			presentKeys.insert("copyright")
			if let val = exist as? String {
				self.copyright = val
			}
			else {
				errors.append(FHIRValidationError(key: "copyright", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["date"] {
			presentKeys.insert("date")
			if let val = exist as? String {
				self.date = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "date", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "date"))
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["document"] {
			presentKeys.insert("document")
			if let val = exist as? [FHIRJSON] {
				do {
					self.document = try CapabilityStatementDocument.instantiate(fromArray: val, owner: self) as? [CapabilityStatementDocument]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "document"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "document", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["experimental"] {
			presentKeys.insert("experimental")
			if let val = exist as? Bool {
				self.experimental = val
			}
			else {
				errors.append(FHIRValidationError(key: "experimental", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["fhirVersion"] {
			presentKeys.insert("fhirVersion")
			if let val = exist as? String {
				self.fhirVersion = val
			}
			else {
				errors.append(FHIRValidationError(key: "fhirVersion", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "fhirVersion"))
		}
		if let exist = json["format"] {
			presentKeys.insert("format")
			if let val = exist as? [String] {
				self.format = val
			}
			else {
				errors.append(FHIRValidationError(key: "format", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "format"))
		}
		if let exist = json["implementation"] {
			presentKeys.insert("implementation")
			if let val = exist as? FHIRJSON {
				do {
					self.implementation = try CapabilityStatementImplementation(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "implementation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "implementation", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["instantiates"] {
			presentKeys.insert("instantiates")
			if let val = exist as? [String] {
				self.instantiates = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "instantiates", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["jurisdiction"] {
			presentKeys.insert("jurisdiction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.jurisdiction = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "jurisdiction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "jurisdiction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["kind"] {
			presentKeys.insert("kind")
			if let val = exist as? String {
				self.kind = val
			}
			else {
				errors.append(FHIRValidationError(key: "kind", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "kind"))
		}
		if let exist = json["messaging"] {
			presentKeys.insert("messaging")
			if let val = exist as? [FHIRJSON] {
				do {
					self.messaging = try CapabilityStatementMessaging.instantiate(fromArray: val, owner: self) as? [CapabilityStatementMessaging]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "messaging"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "messaging", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? [FHIRJSON] {
				do {
					self.profile = try Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "profile"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["publisher"] {
			presentKeys.insert("publisher")
			if let val = exist as? String {
				self.publisher = val
			}
			else {
				errors.append(FHIRValidationError(key: "publisher", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["purpose"] {
			presentKeys.insert("purpose")
			if let val = exist as? String {
				self.purpose = val
			}
			else {
				errors.append(FHIRValidationError(key: "purpose", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["rest"] {
			presentKeys.insert("rest")
			if let val = exist as? [FHIRJSON] {
				do {
					self.rest = try CapabilityStatementRest.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRest]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "rest"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "rest", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["software"] {
			presentKeys.insert("software")
			if let val = exist as? FHIRJSON {
				do {
					self.software = try CapabilityStatementSoftware(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "software"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "software", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["status"] {
			presentKeys.insert("status")
			if let val = exist as? String {
				self.status = val
			}
			else {
				errors.append(FHIRValidationError(key: "status", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "status"))
		}
		if let exist = json["title"] {
			presentKeys.insert("title")
			if let val = exist as? String {
				self.title = val
			}
			else {
				errors.append(FHIRValidationError(key: "title", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["useContext"] {
			presentKeys.insert("useContext")
			if let val = exist as? [FHIRJSON] {
				do {
					self.useContext = try UsageContext.instantiate(fromArray: val, owner: self) as? [UsageContext]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "useContext"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "useContext", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = val
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let acceptUnknown = self.acceptUnknown {
			json["acceptUnknown"] = acceptUnknown.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON(errors: &errors) }
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let document = self.document {
			json["document"] = document.map() { $0.asJSON(errors: &errors) }
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let fhirVersion = self.fhirVersion {
			json["fhirVersion"] = fhirVersion.asJSON()
		}
		if let format = self.format {
			var arr = [Any]()
			for val in format {
				arr.append(val.asJSON())
			}
			json["format"] = arr
		}
		if let implementation = self.implementation {
			json["implementation"] = implementation.asJSON(errors: &errors)
		}
		if let instantiates = self.instantiates {
			var arr = [Any]()
			for val in instantiates {
				arr.append(val.asJSON())
			}
			json["instantiates"] = arr
		}
		if let jurisdiction = self.jurisdiction {
			json["jurisdiction"] = jurisdiction.map() { $0.asJSON(errors: &errors) }
		}
		if let kind = self.kind {
			json["kind"] = kind.asJSON()
		}
		if let messaging = self.messaging {
			json["messaging"] = messaging.map() { $0.asJSON(errors: &errors) }
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.map() { $0.asJSON(errors: &errors) }
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let purpose = self.purpose {
			json["purpose"] = purpose.asJSON()
		}
		if let rest = self.rest {
			json["rest"] = rest.map() { $0.asJSON(errors: &errors) }
		}
		if let software = self.software {
			json["software"] = software.asJSON(errors: &errors)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = useContext.map() { $0.asJSON(errors: &errors) }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Document definition.
 *
 *  A document definition.
 */
open class CapabilityStatementDocument: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementDocument" }
	}
	
	/// Description of document support.
	public var documentation: String?
	
	/// producer | consumer.
	public var mode: String?
	
	/// Constraint on a resource used in the document.
	public var profile: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: String, profile: Reference) {
		self.init()
		self.mode = mode
		self.profile = profile
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = val
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? String {
				self.mode = val
			}
			else {
				errors.append(FHIRValidationError(key: "mode", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? FHIRJSON {
				do {
					self.profile = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "profile"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "profile"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  If this describes a specific instance.
 *
 *  Identifies a specific implementation instance that is described by the capability statement - i.e. a particular
 *  installation, rather than the capabilities of a software program.
 */
open class CapabilityStatementImplementation: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementImplementation" }
	}
	
	/// Describes this specific instance.
	public var description_fhir: String?
	
	/// Base URL for the installation.
	public var url: URL?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(description_fhir: String) {
		self.init()
		self.description_fhir = description_fhir
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "description"))
		}
		if let exist = json["url"] {
			presentKeys.insert("url")
			if let val = exist as? String {
				self.url = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "url", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		
		return json
	}
}


/**
 *  If messaging is supported.
 *
 *  A description of the messaging capabilities of the solution.
 */
open class CapabilityStatementMessaging: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementMessaging" }
	}
	
	/// Messaging interface behavior details.
	public var documentation: String?
	
	/// Where messages should be sent.
	public var endpoint: [CapabilityStatementMessagingEndpoint]?
	
	/// Declare support for this event.
	public var event: [CapabilityStatementMessagingEvent]?
	
	/// Reliable Message Cache Length (min).
	public var reliableCache: UInt?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(event: [CapabilityStatementMessagingEvent]) {
		self.init()
		self.event = event
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = val
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["endpoint"] {
			presentKeys.insert("endpoint")
			if let val = exist as? [FHIRJSON] {
				do {
					self.endpoint = try CapabilityStatementMessagingEndpoint.instantiate(fromArray: val, owner: self) as? [CapabilityStatementMessagingEndpoint]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "endpoint"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "endpoint", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["event"] {
			presentKeys.insert("event")
			if let val = exist as? [FHIRJSON] {
				do {
					self.event = try CapabilityStatementMessagingEvent.instantiate(fromArray: val, owner: self) as? [CapabilityStatementMessagingEvent]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "event"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "event", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "event"))
		}
		if let exist = json["reliableCache"] {
			presentKeys.insert("reliableCache")
			if let val = exist as? UInt {
				self.reliableCache = val
			}
			else {
				errors.append(FHIRValidationError(key: "reliableCache", wants: UInt.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let endpoint = self.endpoint {
			json["endpoint"] = endpoint.map() { $0.asJSON(errors: &errors) }
		}
		if let event = self.event {
			json["event"] = event.map() { $0.asJSON(errors: &errors) }
		}
		if let reliableCache = self.reliableCache {
			json["reliableCache"] = reliableCache.asJSON()
		}
		
		return json
	}
}


/**
 *  Where messages should be sent.
 *
 *  An endpoint (network accessible address) to which messages and/or replies are to be sent.
 */
open class CapabilityStatementMessagingEndpoint: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementMessagingEndpoint" }
	}
	
	/// Address of end-point.
	public var address: URL?
	
	/// http | ftp | mllp +.
	public var protocol_fhir: Coding?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(address: URL, protocol_fhir: Coding) {
		self.init()
		self.address = address
		self.protocol_fhir = protocol_fhir
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["address"] {
			presentKeys.insert("address")
			if let val = exist as? String {
				self.address = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "address", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "address"))
		}
		if let exist = json["protocol"] {
			presentKeys.insert("protocol")
			if let val = exist as? FHIRJSON {
				do {
					self.protocol_fhir = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "protocol"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "protocol", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "protocol"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let address = self.address {
			json["address"] = address.asJSON()
		}
		if let protocol_fhir = self.protocol_fhir {
			json["protocol"] = protocol_fhir.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  Declare support for this event.
 *
 *  A description of the solution's support for an event at this end-point.
 */
open class CapabilityStatementMessagingEvent: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementMessagingEvent" }
	}
	
	/// Consequence | Currency | Notification.
	public var category: String?
	
	/// Event type.
	public var code: Coding?
	
	/// Endpoint-specific event documentation.
	public var documentation: String?
	
	/// Resource that's focus of message.
	public var focus: String?
	
	/// sender | receiver.
	public var mode: String?
	
	/// Profile that describes the request.
	public var request: Reference?
	
	/// Profile that describes the response.
	public var response: Reference?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: Coding, focus: String, mode: String, request: Reference, response: Reference) {
		self.init()
		self.code = code
		self.focus = focus
		self.mode = mode
		self.request = request
		self.response = response
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["category"] {
			presentKeys.insert("category")
			if let val = exist as? String {
				self.category = val
			}
			else {
				errors.append(FHIRValidationError(key: "category", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? FHIRJSON {
				do {
					self.code = try Coding(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "code"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = val
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["focus"] {
			presentKeys.insert("focus")
			if let val = exist as? String {
				self.focus = val
			}
			else {
				errors.append(FHIRValidationError(key: "focus", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "focus"))
		}
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? String {
				self.mode = val
			}
			else {
				errors.append(FHIRValidationError(key: "mode", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		if let exist = json["request"] {
			presentKeys.insert("request")
			if let val = exist as? FHIRJSON {
				do {
					self.request = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "request"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "request", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "request"))
		}
		if let exist = json["response"] {
			presentKeys.insert("response")
			if let val = exist as? FHIRJSON {
				do {
					self.response = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "response"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "response", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "response"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON(errors: &errors)
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let focus = self.focus {
			json["focus"] = focus.asJSON()
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON(errors: &errors)
		}
		if let response = self.response {
			json["response"] = response.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  If the endpoint is a RESTful one.
 *
 *  A definition of the restful capabilities of the solution, if any.
 */
open class CapabilityStatementRest: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRest" }
	}
	
	/// Compartments served/used by system.
	public var compartment: [URL]?
	
	/// General description of implementation.
	public var documentation: String?
	
	/// What operations are supported?.
	public var interaction: [CapabilityStatementRestInteraction]?
	
	/// client | server.
	public var mode: String?
	
	/// Definition of an operation or a custom query.
	public var operation: [CapabilityStatementRestOperation]?
	
	/// Resource served on the REST interface.
	public var resource: [CapabilityStatementRestResource]?
	
	/// Search params for searching all resources.
	public var searchParam: [CapabilityStatementRestResourceSearchParam]?
	
	/// Information about security of implementation.
	public var security: CapabilityStatementRestSecurity?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(mode: String) {
		self.init()
		self.mode = mode
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["compartment"] {
			presentKeys.insert("compartment")
			if let val = exist as? [String] {
				self.compartment = URL.instantiate(fromArray: val)
			}
			else {
				errors.append(FHIRValidationError(key: "compartment", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = val
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["interaction"] {
			presentKeys.insert("interaction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.interaction = try CapabilityStatementRestInteraction.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestInteraction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "interaction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "interaction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["mode"] {
			presentKeys.insert("mode")
			if let val = exist as? String {
				self.mode = val
			}
			else {
				errors.append(FHIRValidationError(key: "mode", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "mode"))
		}
		if let exist = json["operation"] {
			presentKeys.insert("operation")
			if let val = exist as? [FHIRJSON] {
				do {
					self.operation = try CapabilityStatementRestOperation.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestOperation]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "operation"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "operation", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["resource"] {
			presentKeys.insert("resource")
			if let val = exist as? [FHIRJSON] {
				do {
					self.resource = try CapabilityStatementRestResource.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestResource]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "resource"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "resource", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["searchParam"] {
			presentKeys.insert("searchParam")
			if let val = exist as? [FHIRJSON] {
				do {
					self.searchParam = try CapabilityStatementRestResourceSearchParam.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestResourceSearchParam]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "searchParam"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "searchParam", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["security"] {
			presentKeys.insert("security")
			if let val = exist as? FHIRJSON {
				do {
					self.security = try CapabilityStatementRestSecurity(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "security"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "security", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let compartment = self.compartment {
			var arr = [Any]()
			for val in compartment {
				arr.append(val.asJSON())
			}
			json["compartment"] = arr
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let interaction = self.interaction {
			json["interaction"] = interaction.map() { $0.asJSON(errors: &errors) }
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let operation = self.operation {
			json["operation"] = operation.map() { $0.asJSON(errors: &errors) }
		}
		if let resource = self.resource {
			json["resource"] = resource.map() { $0.asJSON(errors: &errors) }
		}
		if let searchParam = self.searchParam {
			json["searchParam"] = searchParam.map() { $0.asJSON(errors: &errors) }
		}
		if let security = self.security {
			json["security"] = security.asJSON(errors: &errors)
		}
		
		return json
	}
}


/**
 *  What operations are supported?.
 *
 *  A specification of restful operations supported by the system.
 */
open class CapabilityStatementRestInteraction: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestInteraction" }
	}
	
	/// transaction | batch | search-system | history-system.
	public var code: String?
	
	/// Anything special about operation behavior.
	public var documentation: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = val
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = val
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		
		return json
	}
}


/**
 *  Definition of an operation or a custom query.
 *
 *  Definition of an operation or a named query and with its parameters and their meaning and type.
 */
open class CapabilityStatementRestOperation: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestOperation" }
	}
	
	/// The defined operation/query.
	public var definition: Reference?
	
	/// Name by which the operation/query is invoked.
	public var name: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(definition: Reference, name: String) {
		self.init()
		self.definition = definition
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? FHIRJSON {
				do {
					self.definition = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "definition"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "definition"))
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let definition = self.definition {
			json["definition"] = definition.asJSON(errors: &errors)
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		
		return json
	}
}


/**
 *  Resource served on the REST interface.
 *
 *  A specification of the restful capabilities of the solution for a specific resource type.
 */
open class CapabilityStatementRestResource: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestResource" }
	}
	
	/// If allows/uses conditional create.
	public var conditionalCreate: Bool?
	
	/// not-supported | single | multiple - how conditional delete is supported.
	public var conditionalDelete: String?
	
	/// not-supported | modified-since | not-match | full-support.
	public var conditionalRead: String?
	
	/// If allows/uses conditional update.
	public var conditionalUpdate: Bool?
	
	/// Additional information about the use of the resource type.
	public var documentation: String?
	
	/// What operations are supported?.
	public var interaction: [CapabilityStatementRestResourceInteraction]?
	
	/// Base System profile for all uses of resource.
	public var profile: Reference?
	
	/// Whether vRead can return past versions.
	public var readHistory: Bool?
	
	/// literal | logical | resolves | enforced | local.
	public var referencePolicy: [String]?
	
	/// _include values supported by the server.
	public var searchInclude: [String]?
	
	/// Search params supported by implementation.
	public var searchParam: [CapabilityStatementRestResourceSearchParam]?
	
	/// _revinclude values supported by the server.
	public var searchRevInclude: [String]?
	
	/// A resource type that is supported.
	public var type: String?
	
	/// If update can commit to a new identity.
	public var updateCreate: Bool?
	
	/// no-version | versioned | versioned-update.
	public var versioning: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(interaction: [CapabilityStatementRestResourceInteraction], type: String) {
		self.init()
		self.interaction = interaction
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["conditionalCreate"] {
			presentKeys.insert("conditionalCreate")
			if let val = exist as? Bool {
				self.conditionalCreate = val
			}
			else {
				errors.append(FHIRValidationError(key: "conditionalCreate", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["conditionalDelete"] {
			presentKeys.insert("conditionalDelete")
			if let val = exist as? String {
				self.conditionalDelete = val
			}
			else {
				errors.append(FHIRValidationError(key: "conditionalDelete", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["conditionalRead"] {
			presentKeys.insert("conditionalRead")
			if let val = exist as? String {
				self.conditionalRead = val
			}
			else {
				errors.append(FHIRValidationError(key: "conditionalRead", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["conditionalUpdate"] {
			presentKeys.insert("conditionalUpdate")
			if let val = exist as? Bool {
				self.conditionalUpdate = val
			}
			else {
				errors.append(FHIRValidationError(key: "conditionalUpdate", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = val
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["interaction"] {
			presentKeys.insert("interaction")
			if let val = exist as? [FHIRJSON] {
				do {
					self.interaction = try CapabilityStatementRestResourceInteraction.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestResourceInteraction]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "interaction"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "interaction", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "interaction"))
		}
		if let exist = json["profile"] {
			presentKeys.insert("profile")
			if let val = exist as? FHIRJSON {
				do {
					self.profile = try Reference(json: val, owner: self)
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "profile"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
			}
		}
		if let exist = json["readHistory"] {
			presentKeys.insert("readHistory")
			if let val = exist as? Bool {
				self.readHistory = val
			}
			else {
				errors.append(FHIRValidationError(key: "readHistory", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["referencePolicy"] {
			presentKeys.insert("referencePolicy")
			if let val = exist as? [String] {
				self.referencePolicy = val
			}
			else {
				errors.append(FHIRValidationError(key: "referencePolicy", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["searchInclude"] {
			presentKeys.insert("searchInclude")
			if let val = exist as? [String] {
				self.searchInclude = val
			}
			else {
				errors.append(FHIRValidationError(key: "searchInclude", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["searchParam"] {
			presentKeys.insert("searchParam")
			if let val = exist as? [FHIRJSON] {
				do {
					self.searchParam = try CapabilityStatementRestResourceSearchParam.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestResourceSearchParam]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "searchParam"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "searchParam", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["searchRevInclude"] {
			presentKeys.insert("searchRevInclude")
			if let val = exist as? [String] {
				self.searchRevInclude = val
			}
			else {
				errors.append(FHIRValidationError(key: "searchRevInclude", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		if let exist = json["updateCreate"] {
			presentKeys.insert("updateCreate")
			if let val = exist as? Bool {
				self.updateCreate = val
			}
			else {
				errors.append(FHIRValidationError(key: "updateCreate", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["versioning"] {
			presentKeys.insert("versioning")
			if let val = exist as? String {
				self.versioning = val
			}
			else {
				errors.append(FHIRValidationError(key: "versioning", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let conditionalCreate = self.conditionalCreate {
			json["conditionalCreate"] = conditionalCreate.asJSON()
		}
		if let conditionalDelete = self.conditionalDelete {
			json["conditionalDelete"] = conditionalDelete.asJSON()
		}
		if let conditionalRead = self.conditionalRead {
			json["conditionalRead"] = conditionalRead.asJSON()
		}
		if let conditionalUpdate = self.conditionalUpdate {
			json["conditionalUpdate"] = conditionalUpdate.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let interaction = self.interaction {
			json["interaction"] = interaction.map() { $0.asJSON(errors: &errors) }
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON(errors: &errors)
		}
		if let readHistory = self.readHistory {
			json["readHistory"] = readHistory.asJSON()
		}
		if let referencePolicy = self.referencePolicy {
			var arr = [Any]()
			for val in referencePolicy {
				arr.append(val.asJSON())
			}
			json["referencePolicy"] = arr
		}
		if let searchInclude = self.searchInclude {
			var arr = [Any]()
			for val in searchInclude {
				arr.append(val.asJSON())
			}
			json["searchInclude"] = arr
		}
		if let searchParam = self.searchParam {
			json["searchParam"] = searchParam.map() { $0.asJSON(errors: &errors) }
		}
		if let searchRevInclude = self.searchRevInclude {
			var arr = [Any]()
			for val in searchRevInclude {
				arr.append(val.asJSON())
			}
			json["searchRevInclude"] = arr
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let updateCreate = self.updateCreate {
			json["updateCreate"] = updateCreate.asJSON()
		}
		if let versioning = self.versioning {
			json["versioning"] = versioning.asJSON()
		}
		
		return json
	}
}


/**
 *  What operations are supported?.
 *
 *  Identifies a restful operation supported by the solution.
 */
open class CapabilityStatementRestResourceInteraction: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestResourceInteraction" }
	}
	
	/// read | vread | update | delete | history-instance | history-type | create | search-type.
	public var code: String?
	
	/// Anything special about operation behavior.
	public var documentation: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: String) {
		self.init()
		self.code = code
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["code"] {
			presentKeys.insert("code")
			if let val = exist as? String {
				self.code = val
			}
			else {
				errors.append(FHIRValidationError(key: "code", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "code"))
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = val
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		
		return json
	}
}


/**
 *  Search params supported by implementation.
 *
 *  Search parameters for implementations to support and/or make use of - either references to ones defined in the
 *  specification, or additional ones defined for/by the implementation.
 */
open class CapabilityStatementRestResourceSearchParam: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestResourceSearchParam" }
	}
	
	/// Chained names supported.
	public var chain: [String]?
	
	/// Source of definition for parameter.
	public var definition: URL?
	
	/// Server-specific usage.
	public var documentation: String?
	
	/// missing | exact | contains | not | text | in | not-in | below | above | type.
	public var modifier: [String]?
	
	/// Name of search parameter.
	public var name: String?
	
	/// Types of resource (if a resource reference).
	public var target: [String]?
	
	/// number | date | string | token | reference | composite | quantity | uri.
	public var type: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, type: String) {
		self.init()
		self.name = name
		self.type = type
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["chain"] {
			presentKeys.insert("chain")
			if let val = exist as? [String] {
				self.chain = val
			}
			else {
				errors.append(FHIRValidationError(key: "chain", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["definition"] {
			presentKeys.insert("definition")
			if let val = exist as? String {
				self.definition = URL(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "definition", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["documentation"] {
			presentKeys.insert("documentation")
			if let val = exist as? String {
				self.documentation = val
			}
			else {
				errors.append(FHIRValidationError(key: "documentation", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["modifier"] {
			presentKeys.insert("modifier")
			if let val = exist as? [String] {
				self.modifier = val
			}
			else {
				errors.append(FHIRValidationError(key: "modifier", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["target"] {
			presentKeys.insert("target")
			if let val = exist as? [String] {
				self.target = val
			}
			else {
				errors.append(FHIRValidationError(key: "target", wants: Array<String>.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "type"))
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let chain = self.chain {
			var arr = [Any]()
			for val in chain {
				arr.append(val.asJSON())
			}
			json["chain"] = arr
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let modifier = self.modifier {
			var arr = [Any]()
			for val in modifier {
				arr.append(val.asJSON())
			}
			json["modifier"] = arr
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let target = self.target {
			var arr = [Any]()
			for val in target {
				arr.append(val.asJSON())
			}
			json["target"] = arr
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Information about security of implementation.
 *
 *  Information about security implementation from an interface perspective - what a client needs to know.
 */
open class CapabilityStatementRestSecurity: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestSecurity" }
	}
	
	/// Certificates associated with security profiles.
	public var certificate: [CapabilityStatementRestSecurityCertificate]?
	
	/// Adds CORS Headers (http://enable-cors.org/).
	public var cors: Bool?
	
	/// General description of how security works.
	public var description_fhir: String?
	
	/// OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates.
	public var service: [CodeableConcept]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["certificate"] {
			presentKeys.insert("certificate")
			if let val = exist as? [FHIRJSON] {
				do {
					self.certificate = try CapabilityStatementRestSecurityCertificate.instantiate(fromArray: val, owner: self) as? [CapabilityStatementRestSecurityCertificate]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "certificate"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "certificate", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		if let exist = json["cors"] {
			presentKeys.insert("cors")
			if let val = exist as? Bool {
				self.cors = val
			}
			else {
				errors.append(FHIRValidationError(key: "cors", wants: Bool.self, has: type(of: exist)))
			}
		}
		if let exist = json["description"] {
			presentKeys.insert("description")
			if let val = exist as? String {
				self.description_fhir = val
			}
			else {
				errors.append(FHIRValidationError(key: "description", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["service"] {
			presentKeys.insert("service")
			if let val = exist as? [FHIRJSON] {
				do {
					self.service = try CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "service"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "service", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let certificate = self.certificate {
			json["certificate"] = certificate.map() { $0.asJSON(errors: &errors) }
		}
		if let cors = self.cors {
			json["cors"] = cors.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let service = self.service {
			json["service"] = service.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}


/**
 *  Certificates associated with security profiles.
 */
open class CapabilityStatementRestSecurityCertificate: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementRestSecurityCertificate" }
	}
	
	/// Actual certificate.
	public var blob: Base64Binary?
	
	/// Mime type for certificate.
	public var type: String?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["blob"] {
			presentKeys.insert("blob")
			if let val = exist as? String {
				self.blob = Base64Binary(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "blob", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["type"] {
			presentKeys.insert("type")
			if let val = exist as? String {
				self.type = val
			}
			else {
				errors.append(FHIRValidationError(key: "type", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let blob = self.blob {
			json["blob"] = blob.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Software that is covered by this capability statement.
 *
 *  Software that is covered by this capability statement.  It is used when the capability statement describes the
 *  capabilities of a particular software version, independent of an installation.
 */
open class CapabilityStatementSoftware: BackboneElement {
	override open class var resourceType: String {
		get { return "CapabilityStatementSoftware" }
	}
	
	/// A name the software is known by.
	public var name: String?
	
	/// Date this version released.
	public var releaseDate: DateTime?
	
	/// Version covered by this statement.
	public var version: String?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String) {
		self.init()
		self.name = name
	}
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["name"] {
			presentKeys.insert("name")
			if let val = exist as? String {
				self.name = val
			}
			else {
				errors.append(FHIRValidationError(key: "name", wants: String.self, has: type(of: exist)))
			}
		}
		else {
			errors.append(FHIRValidationError(missing: "name"))
		}
		if let exist = json["releaseDate"] {
			presentKeys.insert("releaseDate")
			if let val = exist as? String {
				self.releaseDate = DateTime(string: val)
			}
			else {
				errors.append(FHIRValidationError(key: "releaseDate", wants: String.self, has: type(of: exist)))
			}
		}
		if let exist = json["version"] {
			presentKeys.insert("version")
			if let val = exist as? String {
				self.version = val
			}
			else {
				errors.append(FHIRValidationError(key: "version", wants: String.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let releaseDate = self.releaseDate {
			json["releaseDate"] = releaseDate.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}
