/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Company: Model {
	public var state : String?
	public var name : String?
	public var addressTwo : String?
	public var emailOne : String?
	public var country : String?
	public var isOwner : Int?
	public var emailThree : String?
	public var contacts : Int?
	public var industry : String?
	public var logoUrl : String?
	public var addressOne : String?
	public var website : String?
	public var cid : String?
	public var emailTwo : String?
	public var accounts : Int?
	public var phone : String?
	public var companyNameUrl : String?
	public var countrycode : String?
	public var canSeePrivate : String?
	public var zip : String?
	public var id : Int?
	public var city : String?
	public var fax : String?

    public required init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)

		state = dictionary["state"] as? String
		name = dictionary["name"] as? String
		addressTwo = dictionary["address_two"] as? String
		emailOne = dictionary["email_one"] as? String
		country = dictionary["country"] as? String
		isOwner = dictionary["isowner"] as? Int
		emailThree = dictionary["email_three"] as? String
		contacts = dictionary["contacts"] as? Int
		industry = dictionary["industry"] as? String
		logoUrl = dictionary["logo-URL"] as? String
		addressOne = dictionary["address_one"] as? String
		website = dictionary["website"] as? String
		cid = dictionary["cid"] as? String
		emailTwo = dictionary["email_two"] as? String
		accounts = dictionary["accounts"] as? Int
		phone = dictionary["phone"] as? String
		companyNameUrl = dictionary["company_name_url"] as? String
		countrycode = dictionary["countrycode"] as? String
		canSeePrivate = dictionary["can_see_private"] as? String
		zip = dictionary["zip"] as? String
		id = dictionary["id"] as? Int
		city = dictionary["city"] as? String
		fax = dictionary["fax"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.state, forKey: "state")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.addressTwo, forKey: "address_two")
		dictionary.setValue(self.emailOne, forKey: "email_one")
		dictionary.setValue(self.country, forKey: "country")
		dictionary.setValue(self.isOwner, forKey: "isowner")
		dictionary.setValue(self.emailThree, forKey: "email_three")
		dictionary.setValue(self.contacts, forKey: "contacts")
		dictionary.setValue(self.industry, forKey: "industry")
		dictionary.setValue(self.logoUrl, forKey: "logo-URL")
		dictionary.setValue(self.addressOne, forKey: "address_one")
		dictionary.setValue(self.website, forKey: "website")
		dictionary.setValue(self.cid, forKey: "cid")
		dictionary.setValue(self.emailTwo, forKey: "email_two")
		dictionary.setValue(self.accounts, forKey: "accounts")
		dictionary.setValue(self.phone, forKey: "phone")
		dictionary.setValue(self.companyNameUrl, forKey: "company_name_url")
		dictionary.setValue(self.countrycode, forKey: "countrycode")
		dictionary.setValue(self.canSeePrivate, forKey: "can_see_private")
		dictionary.setValue(self.zip, forKey: "zip")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.city, forKey: "city")
		dictionary.setValue(self.fax, forKey: "fax")

		return dictionary
	}

}
