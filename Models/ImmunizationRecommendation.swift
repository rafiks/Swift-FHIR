//
//  ImmunizationRecommendation.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-07-18.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/*!
 *  Immunization profile.
 *
 *  Scope and Usage The ImmunizationRecommendation resource is intended to cover communication of a specified
 *  patient's immunization recommendation and status across all healthcare disciplines in all care settings and
 *  all regions.
 *  
 *  Additionally, the ImmunizationRecommendation resource is expected to cover key concepts related to the
 *  querying of a patient's immunization recommendation and status. This resource - through consultation with the
 *  PHER work group - is believed to meet key use cases and information requirements as defined in the existing
 *  HL7 v3 POIZ domain and Immunization Domain Analysis Model.
 */
class ImmunizationRecommendation: FHIRResource
{
	override class var resourceName: String {
		get { return "ImmunizationRecommendation" }
	}
	
	/*! Text summary of the resource, for human interpretation */
	var text: Narrative?
	
	/*! Business identifier */
	var identifier: [Identifier]?
	
	/*! Who this profile is for */
	var subject: FHIRElement? {
		get { return resolveReference("subject") }
		set {
			if newValue {
				didSetReference(newValue!, name: "subject")
			}
		}
	}
	
	/*! Vaccine administration recommendations */
	var recommendation: [ImmunizationRecommendationRecommendation]?
	
	convenience init(subject: ResourceReference?, recommendation: [ImmunizationRecommendationRecommendation]?) {
		self.init(json: nil)
		if subject {
			self.subject = subject
		}
		if recommendation {
			self.recommendation = recommendation
		}
	}	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val) as? [Identifier]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = ResourceReference(json: val)
			}
			if let val = js["recommendation"] as? [NSDictionary] {
				self.recommendation = ImmunizationRecommendationRecommendation.from(val) as? [ImmunizationRecommendationRecommendation]
			}
		}
	}
}


/*!
 *  Vaccine administration recommendations.
 */
class ImmunizationRecommendationRecommendation: FHIRElement
{	
	/*! Date recommendation created */
	var date: NSDate?
	
	/*! Vaccine recommendation applies to */
	var vaccineType: CodeableConcept?
	
	/*! Recommended dose number */
	var doseNumber: Int?
	
	/*! Vaccine administration status */
	var forecastStatus: CodeableConcept?
	
	/*! Dates governing proposed immunization */
	var dateCriterion: [ImmunizationRecommendationRecommendationDateCriterion]?
	
	/*! Protocol used by recommendation */
	var proto: ImmunizationRecommendationRecommendationProtocol?
	
	/*! Past immunizations supporting recommendation */
	var supportingImmunization: [FHIRElement]? {
		get { return resolveReferences("supportingImmunization") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "supportingImmunization")
			}
		}
	}
	
	/*! Patient observations supporting recommendation */
	var supportingPatientInformation: [FHIRElement]? {
		get { return resolveReferences("supportingPatientInformation") }
		set {
			if newValue {
				didSetReferences(newValue!, name: "supportingPatientInformation")
			}
		}
	}
	
	convenience init(date: NSDate?, vaccineType: CodeableConcept?, forecastStatus: CodeableConcept?) {
		self.init(json: nil)
		if date {
			self.date = date
		}
		if vaccineType {
			self.vaccineType = vaccineType
		}
		if forecastStatus {
			self.forecastStatus = forecastStatus
		}
	}	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["vaccineType"] as? NSDictionary {
				self.vaccineType = CodeableConcept(json: val)
			}
			if let val = js["doseNumber"] as? Int {
				self.doseNumber = val
			}
			if let val = js["forecastStatus"] as? NSDictionary {
				self.forecastStatus = CodeableConcept(json: val)
			}
			if let val = js["dateCriterion"] as? [NSDictionary] {
				self.dateCriterion = ImmunizationRecommendationRecommendationDateCriterion.from(val) as? [ImmunizationRecommendationRecommendationDateCriterion]
			}
			if let val = js["proto"] as? NSDictionary {
				self.proto = ImmunizationRecommendationRecommendationProtocol(json: val)
			}
			if let val = js["supportingImmunization"] as? [NSDictionary] {
				self.supportingImmunization = ResourceReference.from(val) as? [ResourceReference]
			}
			if let val = js["supportingPatientInformation"] as? [NSDictionary] {
				self.supportingPatientInformation = ResourceReference.from(val) as? [ResourceReference]
			}
		}
	}
}


/*!
 *  Dates governing proposed immunization.
 *
 *  Vaccine date recommendations - e.g. earliest date to administer, latest date to administer, etc.
 */
class ImmunizationRecommendationRecommendationDateCriterion: FHIRElement
{	
	/*! Type of date */
	var code: CodeableConcept?
	
	/*! Recommended date */
	var value: NSDate?
	
	convenience init(code: CodeableConcept?, value: NSDate?) {
		self.init(json: nil)
		if code {
			self.code = code
		}
		if value {
			self.value = value
		}
	}	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? NSDictionary {
				self.code = CodeableConcept(json: val)
			}
			if let val = js["value"] as? String {
				self.value = NSDate(json: val)
			}
		}
	}
}


/*!
 *  Protocol used by recommendation.
 *
 *  Contains information about the protocol under which the vaccine was administered.
 */
class ImmunizationRecommendationRecommendationProtocol: FHIRElement
{	
	/*! Number of dose within sequence */
	var doseSequence: Int?
	
	/*! Protocol details */
	var description: String?
	
	/*! Who is responsible for protocol */
	var authority: FHIRElement? {
		get { return resolveReference("authority") }
		set {
			if newValue {
				didSetReference(newValue!, name: "authority")
			}
		}
	}
	
	/*! Name of vaccination series */
	var series: String?
	
	
	init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["doseSequence"] as? Int {
				self.doseSequence = val
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["authority"] as? NSDictionary {
				self.authority = ResourceReference(json: val)
			}
			if let val = js["series"] as? String {
				self.series = val
			}
		}
	}
}

