/*
 Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

import Foundation

/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class SingleInvoice: Model {
    public var exportedByUserId : String?
    public var projectId : String?
    public var createdByUserFirstname : String?
    public var fixedCost : String?
    public var status : String?
    public var dateCreated : String?
    public var exportedByUserLastname : String?
    public var lineItems : [LineItem]?
    public var number : String?
    public var poNumber : String?
    public var exportedByUserFirstname : String?
    public var expenses : [Expense]?
    public var updateByUserId : String?
    public var createdByUserId : String?
    public var id : String?
    public var companyName : String?
    public var editedByUserFirstname : String?
    public var totalTimeDecimal : Double?
    public var totalCost : Double?
    public var description : String?
    public var companyId : String?
    public var exportedDate : String?
    public var displayDate : Int?
    public var projectName : String?
    public var totalTime : Int?
    public var createdByUserLastname : String?
    public var dateUpdated : String?
    public var editedByUserLastname : String?
    public var currencyCode : String?
    
       
    public required init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)
        
        exportedByUserId = unwrapIdValue(dictionary["exported-by-user-id"])
        projectId = unwrapIdValue(dictionary["project-id"])
        createdByUserFirstname = dictionary["created-by-user-firstname"] as? String
        fixedCost = dictionary["fixed-cost"] as? String
        status = dictionary["status"] as? String
        dateCreated = dictionary["date-created"] as? String
        exportedByUserLastname = dictionary["exported-by-user-lastname"] as? String
        if (dictionary["line-items"] != nil) { lineItems = LineItem.modelsFromDictionaryArray(array: (dictionary["line-items"] as? NSArray)!) }
        number = dictionary["number"] as? String
        poNumber = dictionary["po-number"] as? String
        exportedByUserFirstname = dictionary["exported-by-user-firstname"] as? String
        if (dictionary["expenses"] != nil) { expenses = Expense.modelsFromDictionaryArray(array: (dictionary["expenses"] as? NSArray)!) }
        updateByUserId = unwrapIdValue(dictionary["update-by-user-id"])
        createdByUserId = unwrapIdValue(dictionary["created-by-user-id"])
        id = unwrapIdValue(dictionary["id"])
        companyName = dictionary["company-name"] as? String
        editedByUserFirstname = dictionary["edited-by-user-firstname"] as? String
        totalTimeDecimal = dictionary["total-time-decimal"] as? Double
        totalCost = dictionary["total-cost"] as? Double
        description = dictionary["description"] as? String
        companyId = unwrapIdValue(dictionary["company-id"])
        exportedDate = dictionary["exported-date"] as? String
        displayDate = dictionary["display-date"] as? Int
        projectName = dictionary["project-name"] as? String
        totalTime = dictionary["total-time"] as? Int
        createdByUserLastname = dictionary["created-by-user-lastname"] as? String
        dateUpdated = dictionary["date-updated"] as? String
        editedByUserLastname = dictionary["edited-by-user-lastname"] as? String
        currencyCode = dictionary["currency-code"] as? String
    }
    
    public override func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.exportedByUserId, forKey: "exported-by-user-id")
        dictionary.setValue(self.projectId, forKey: "project-id")
        dictionary.setValue(self.createdByUserFirstname, forKey: "created-by-user-firstname")
        dictionary.setValue(self.fixedCost, forKey: "fixed-cost")
        dictionary.setValue(self.status, forKey: "status")
        dictionary.setValue(self.dateCreated, forKey: "date-created")
        dictionary.setValue(self.exportedByUserLastname, forKey: "exported-by-user-lastname")
        dictionary.setValue(self.number, forKey: "number")
        dictionary.setValue(self.poNumber, forKey: "po-number")
        dictionary.setValue(self.exportedByUserFirstname, forKey: "exported-by-user-firstname")
        dictionary.setValue(self.updateByUserId, forKey: "update-by-user-id")
        dictionary.setValue(self.createdByUserId, forKey: "created-by-user-id")
        dictionary.setValue(self.id, forKey: "id")
        dictionary.setValue(self.companyName, forKey: "company-name")
        dictionary.setValue(self.editedByUserFirstname, forKey: "edited-by-user-firstname")
        dictionary.setValue(self.totalTimeDecimal, forKey: "total-time-decimal")
        dictionary.setValue(self.totalCost, forKey: "total-cost")
        dictionary.setValue(self.description, forKey: "description")
        dictionary.setValue(self.companyId, forKey: "company-id")
        dictionary.setValue(self.exportedDate, forKey: "exported-date")
        dictionary.setValue(self.displayDate, forKey: "display-date")
        dictionary.setValue(self.projectName, forKey: "project-name")
        dictionary.setValue(self.totalTime, forKey: "total-time")
        dictionary.setValue(self.createdByUserLastname, forKey: "created-by-user-lastname")
        dictionary.setValue(self.dateUpdated, forKey: "date-updated")
        dictionary.setValue(self.editedByUserLastname, forKey: "edited-by-user-lastname")
        dictionary.setValue(self.currencyCode, forKey: "currency-code")
        
        return dictionary
    }
    
}
