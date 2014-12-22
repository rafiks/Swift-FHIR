//
//  Goal.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3903 (goal.profile.json) on 2014-12-22.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Patient Health Goal.
 *
 *  Describes the intended objective(s) of the care.
 */
public class Goal: FHIRResource
{
	override public class var resourceName: String {
		get { return "Goal" }
	}
	
	/// Health issues this goal addresses
	public var concern: [Reference]?
	
	/// What's the desired outcome?
	public var description: String?
	
	/// External Ids for this goal
	public var identifier: [Identifier]?
	
	/// Comments about the goal
	public var notes: String?
	
	/// The patient for whom this goal is intended for
	public var patient: Reference?
	
	/// proposed | planned | in progress | achieved | sustaining | cancelled | accepted | rejected
	public var status: String?
	
	public convenience init(description: String?) {
		self.init(json: nil)
		if nil != description {
			self.description = description
		}
	}
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["concern"] as? [NSDictionary] {
				self.concern = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["description"] as? String {
				self.description = val
			}
			if let val = js["identifier"] as? [NSDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["notes"] as? String {
				self.notes = val
			}
			if let val = js["patient"] as? NSDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
		}
	}
}
