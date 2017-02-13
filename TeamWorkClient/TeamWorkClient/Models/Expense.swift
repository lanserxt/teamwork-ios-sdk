/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Expense: Model {
	public var invoiceId : String?
	public var name : String?
	public var createdByUserFirstname : String?
	public var createdByUserId : String?
	public var descriptionValue : String?
	public var createdByUserLastname : String?
	public var date : Int?
	public var id : String?
    public var projectId : String?
    public var companyId : String?
    public var companyName : String?
	public var cost : Double?


	required public init?(dictionary: NSDictionary) {
        
		super.init(dictionary: dictionary)
        
        companyName = dictionary["company-name"] as? String
        companyId = unwrapIdValue(dictionary["company-id"])
        projectId = unwrapIdValue(dictionary["project-id"])
		invoiceId = unwrapIdValue(dictionary["invoice-id"])
		name = dictionary["name"] as? String
		createdByUserFirstname = dictionary["created-by-user-firstname"] as? String
		createdByUserId = dictionary["created-by-user-id"] as? String
		descriptionValue = dictionary["description"] as? String
		createdByUserLastname = dictionary["created-by-user-lastname"] as? String
		date = dictionary["date"] as? Int
		id = unwrapIdValue(dictionary["id"])
		cost = dictionary["cost"] as? Double
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.companyName, forKey: "company-name")
        dictionary.setValue(self.companyId, forKey: "company-id")
		dictionary.setValue(self.projectId, forKey: "project-id")
		dictionary.setValue(self.invoiceId, forKey: "invoice-id")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.createdByUserFirstname, forKey: "created-by-user-firstname")
		dictionary.setValue(self.createdByUserId, forKey: "created-by-user-id")
		dictionary.setValue(self.descriptionValue, forKey: "description")
		dictionary.setValue(self.createdByUserLastname, forKey: "created-by-user-lastname")
		dictionary.setValue(self.date, forKey: "date")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.cost, forKey: "cost")

		return dictionary
	}

}
