/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class LineItem: Model {
    
	public var minutes : Int?
	public var dateLoggedUtc : String?
	public var rate : Double?
	public var decimalHours : Double?
	public var description : String?
	public var userLastname : String?
	public var id : Int?
	public var userFirstname : String?
	public var billable : Int?
	public var taskName : String?
	public var userId : Int?
	public var taskId : String?
	public var cost : Double?

    public required init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)
        
		minutes = dictionary["minutes"] as? Int
		dateLoggedUtc = dictionary["date-logged-utc"] as? String
		rate = dictionary["rate"] as? Double
		decimalHours = dictionary["decimal-hours"] as? Double
		description = dictionary["description"] as? String
		userLastname = dictionary["user-lastname"] as? String
		id = dictionary["id"] as? Int
		userFirstname = dictionary["user-firstname"] as? String
		billable = dictionary["billable"] as? Int
		taskName = dictionary["task-name"] as? String
		userId = dictionary["user-id"] as? Int
		taskId = dictionary["task-id"] as? String
		cost = dictionary["cost"] as? Double
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.minutes, forKey: "minutes")
		dictionary.setValue(self.dateLoggedUtc, forKey: "date-logged-utc")
		dictionary.setValue(self.rate, forKey: "rate")
		dictionary.setValue(self.decimalHours, forKey: "decimal-hours")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.userLastname, forKey: "user-lastname")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.userFirstname, forKey: "user-firstname")
		dictionary.setValue(self.billable, forKey: "billable")
		dictionary.setValue(self.taskName, forKey: "task-name")
		dictionary.setValue(self.userId, forKey: "user-id")
		dictionary.setValue(self.taskId, forKey: "task-id")
		dictionary.setValue(self.cost, forKey: "cost")

		return dictionary
	}

}
