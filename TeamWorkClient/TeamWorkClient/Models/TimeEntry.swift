/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class TimeEntry: Model {
	public var projectId : String?
	public var minutes : Int?
	public var isBillable : Int?
	public var personFirstName : String?
	public var todoListName : String?
	public var description : String?
	public var todoItemName : String?
	public var todoListId : String?
	public var tags : Array<Tag>?
	public var companyId : String?
	public var personId : String?
	public var projectStatus : String?
	public var projectName : String?
	public var companyName : String?
	public var id : String?
	public var date : String?
	public var todoItemId : String?
	public var invoiceNo : String?
	public var personLastName : String?
	public var hasStartTime : Int?
	public var hours : Int?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		projectId = unwrapIdValue(dictionary["project-id"])
		minutes = dictionary["minutes"] as? Int
		isBillable = dictionary["isbillable"] as? Int
		personFirstName = dictionary["person-first-name"] as? String
		todoListName = dictionary["todo-list-name"] as? String
		description = dictionary["description"] as? String
		todoItemName = dictionary["todo-item-name"] as? String
		todoListId = unwrapIdValue(dictionary["todo-list-id"])
        if (dictionary["tags"] != nil) { tags = Tag.modelsFromDictionaryArray(array: dictionary["tags"] as! NSArray) }
		companyId = unwrapIdValue(dictionary["company-id"])
		personId = unwrapIdValue(dictionary["person-id"])
		projectStatus = dictionary["project-status"] as? String
		projectName = dictionary["project-name"] as? String
		companyName = dictionary["company-name"] as? String
		id = unwrapIdValue(dictionary["id"])
		date = dictionary["date"] as? String
		todoItemId = unwrapIdValue(dictionary["todo-item-id"])
		invoiceNo = dictionary["invoiceNo"] as? String
		personLastName = dictionary["person-last-name"] as? String
		hasStartTime = dictionary["has-start-time"] as? Int
		hours = dictionary["hours"] as? Int
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.projectId, forKey: "project-id")
		dictionary.setValue(self.minutes, forKey: "minutes")
		dictionary.setValue(self.isBillable, forKey: "isbillable")
		dictionary.setValue(self.personFirstName, forKey: "person-first-name")
		dictionary.setValue(self.todoListName, forKey: "todo-list-name")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.todoItemName, forKey: "todo-item-name")
		dictionary.setValue(self.todoListId, forKey: "todo-list-id")
		dictionary.setValue(self.companyId, forKey: "company-id")
		dictionary.setValue(self.personId, forKey: "person-id")
		dictionary.setValue(self.projectStatus, forKey: "project-status")
		dictionary.setValue(self.projectName, forKey: "project-name")
		dictionary.setValue(self.companyName, forKey: "company-name")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.date, forKey: "date")
		dictionary.setValue(self.todoItemId, forKey: "todo-item-id")
		dictionary.setValue(self.invoiceNo, forKey: "invoiceNo")
		dictionary.setValue(self.personLastName, forKey: "person-last-name")
		dictionary.setValue(self.hasStartTime, forKey: "has-start-time")
		dictionary.setValue(self.hours, forKey: "hours")

		return dictionary
	}

}
