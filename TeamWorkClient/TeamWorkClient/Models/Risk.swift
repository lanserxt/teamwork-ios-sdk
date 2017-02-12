/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Risk: Model {
	public var lastChangedOn : String?
	public var createdByUserId : String?
	public var impact : String?
	public var createdByUserLastName : String?
	public var impactSchedule : Int?
	public var createdByUserFirstName : String?
	public var lastChangedByUserFirstName : String?
	public var impactValue : Int?
	public var impactPerformance : Int?
	public var status : String?
	public var mitigationPlan : String?
	public var probabilityValue : Int?
	public var source : String?
	public var result : Int?
	public var probability : String?
	public var createdOn : String?
	public var id : String?
	public var lastChangedByUserLastName : String?
	public var impactCost : Int?
	public var lastChangedByUserId : String?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		lastChangedOn = dictionary["lastChangedOn"] as? String
		createdByUserId = dictionary["createdByUserId"] as? String
		impact = dictionary["impact"] as? String
		createdByUserLastName = dictionary["createdByUserLastName"] as? String
		impactSchedule = dictionary["impactSchedule"] as? Int
		createdByUserFirstName = dictionary["createdByUserFirstName"] as? String
		lastChangedByUserFirstName = dictionary["lastChangedByUserFirstName"] as? String
		impactValue = dictionary["impactValue"] as? Int
		impactPerformance = dictionary["impactPerformance"] as? Int
		status = dictionary["status"] as? String
		mitigationPlan = dictionary["mitigationPlan"] as? String
		probabilityValue = dictionary["probabilityValue"] as? Int
		source = dictionary["source"] as? String
		result = dictionary["result"] as? Int
		probability = dictionary["probability"] as? String
		createdOn = dictionary["createdOn"] as? String
		id = dictionary["id"] as? String
		lastChangedByUserLastName = dictionary["lastChangedByUserLastName"] as? String
		impactCost = dictionary["impactCost"] as? Int
		lastChangedByUserId = dictionary["lastChangedByUserId"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.lastChangedOn, forKey: "lastChangedOn")
		dictionary.setValue(self.createdByUserId, forKey: "createdByUserId")
		dictionary.setValue(self.impact, forKey: "impact")
		dictionary.setValue(self.createdByUserLastName, forKey: "createdByUserLastName")
		dictionary.setValue(self.impactSchedule, forKey: "impactSchedule")
		dictionary.setValue(self.createdByUserFirstName, forKey: "createdByUserFirstName")
		dictionary.setValue(self.lastChangedByUserFirstName, forKey: "lastChangedByUserFirstName")
		dictionary.setValue(self.impactValue, forKey: "impactValue")
		dictionary.setValue(self.impactPerformance, forKey: "impactPerformance")
		dictionary.setValue(self.status, forKey: "status")
		dictionary.setValue(self.mitigationPlan, forKey: "mitigationPlan")
		dictionary.setValue(self.probabilityValue, forKey: "probabilityValue")
		dictionary.setValue(self.source, forKey: "source")
		dictionary.setValue(self.result, forKey: "result")
		dictionary.setValue(self.probability, forKey: "probability")
		dictionary.setValue(self.createdOn, forKey: "createdOn")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.lastChangedByUserLastName, forKey: "lastChangedByUserLastName")
		dictionary.setValue(self.impactCost, forKey: "impactCost")
		dictionary.setValue(self.lastChangedByUserId, forKey: "lastChangedByUserId")

		return dictionary
	}

}
