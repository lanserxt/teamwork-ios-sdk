/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class GeneralInvoice: Model {
	public var projectId : String?
	public var exportedByUserId : String?
	public var createdByUserFirstname : String?
	public var description : String?
	public var fixedCost : String?
	public var status : String?
	public var dateCreated : String?
	public var exportedByUserLastname : String?
	public var companyId : String?
	public var number : String?
	public var exportedByUserFirstname : String?
	public var poNumber : String?
	public var projectName : String?
	public var displayDate : Int?
	public var exportedDate : String?
	public var createdByUserId : String?
	public var updateByUserId : String?
	public var createdByUserLastname : String?
	public var companyName : String?
	public var id : String?
	public var dateUpdated : String?
	public var editedByUserLastname : String?
	public var editedByUserFirstname : String?
	public var currencyCode : String?

    
    public required init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)

		projectId = dictionary["project-id"] as? String
		exportedByUserId = dictionary["exported-by-user-id"] as? String
		createdByUserFirstname = dictionary["created-by-user-firstname"] as? String
		description = dictionary["description"] as? String
		fixedCost = dictionary["fixed-cost"] as? String
		status = dictionary["status"] as? String
		dateCreated = dictionary["date-created"] as? String
		exportedByUserLastname = dictionary["exported-by-user-lastname"] as? String
		companyId = dictionary["company-id"] as? String
		number = dictionary["number"] as? String
		exportedByUserFirstname = dictionary["exported-by-user-firstname"] as? String
		poNumber = dictionary["po-number"] as? String
		projectName = dictionary["project-name"] as? String
		displayDate = dictionary["display-date"] as? Int
		exportedDate = dictionary["exported-date"] as? String
		createdByUserId = dictionary["created-by-user-id"] as? String
		updateByUserId = dictionary["update-by-user-id"] as? String
		createdByUserLastname = dictionary["created-by-user-lastname"] as? String
		companyName = dictionary["company-name"] as? String
		id = dictionary["id"] as? String
		dateUpdated = dictionary["date-updated"] as? String
		editedByUserLastname = dictionary["edited-by-user-lastname"] as? String
		editedByUserFirstname = dictionary["edited-by-user-firstname"] as? String
		currencyCode = dictionary["currency-code"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
    override public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()

		dictionary.setValue(self.projectId, forKey: "project-id")
		dictionary.setValue(self.exportedByUserId, forKey: "exported-by-user-id")
		dictionary.setValue(self.createdByUserFirstname, forKey: "created-by-user-firstname")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.fixedCost, forKey: "fixed-cost")
		dictionary.setValue(self.status, forKey: "status")
		dictionary.setValue(self.dateCreated, forKey: "date-created")
		dictionary.setValue(self.exportedByUserLastname, forKey: "exported-by-user-lastname")
		dictionary.setValue(self.companyId, forKey: "company-id")
		dictionary.setValue(self.number, forKey: "number")
		dictionary.setValue(self.exportedByUserFirstname, forKey: "exported-by-user-firstname")
		dictionary.setValue(self.poNumber, forKey: "po-number")
		dictionary.setValue(self.projectName, forKey: "project-name")
		dictionary.setValue(self.displayDate, forKey: "display-date")
		dictionary.setValue(self.exportedDate, forKey: "exported-date")
		dictionary.setValue(self.createdByUserId, forKey: "created-by-user-id")
		dictionary.setValue(self.updateByUserId, forKey: "update-by-user-id")
		dictionary.setValue(self.createdByUserLastname, forKey: "created-by-user-lastname")
		dictionary.setValue(self.companyName, forKey: "company-name")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.dateUpdated, forKey: "date-updated")
		dictionary.setValue(self.editedByUserLastname, forKey: "edited-by-user-lastname")
		dictionary.setValue(self.editedByUserFirstname, forKey: "edited-by-user-firstname")
		dictionary.setValue(self.currencyCode, forKey: "currency-code")

		return dictionary
	}

}
