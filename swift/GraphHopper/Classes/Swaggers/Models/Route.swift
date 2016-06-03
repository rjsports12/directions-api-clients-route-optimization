//
// Route.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Route: JSONEncodable {

    /** id of vehicle that operates route */
    public var vehicle_id: String?
    /** array of activities */
    public var activities: [Activity]?
    

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["vehicle_id"] = self.vehicle_id
        nillableDictionary["activities"] = self.activities?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}