/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class PeopleAPIKey: Model {
	public var userAPIKey : String?
	public var firstName : String?
	public var companyName : String?
	public var id : String?
	public var inOwnerCompany : String?
	public var lastName : String?
	public var companyId : String?
	public var emailAddress : String?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		userAPIKey = dictionary["userAPIKey"] as? String
		firstName = dictionary["first-name"] as? String
		companyName = dictionary["company-name"] as? String
		id = unwrapIdValue(dictionary["id"])
		inOwnerCompany = dictionary["in-owner-company"] as? String
		lastName = dictionary["last-name"] as? String
		companyId = unwrapIdValue(dictionary["companyId"])
		emailAddress = dictionary["email-address"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.userAPIKey, forKey: "userAPIKey")
		dictionary.setValue(self.firstName, forKey: "first-name")
		dictionary.setValue(self.companyName, forKey: "company-name")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.inOwnerCompany, forKey: "in-owner-company")
		dictionary.setValue(self.lastName, forKey: "last-name")
		dictionary.setValue(self.companyId, forKey: "companyId")
		dictionary.setValue(self.emailAddress, forKey: "email-address")

		return dictionary
	}

}
