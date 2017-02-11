/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class PersonDetails: Model {
	public var administrator : String?
	public var pid : String?
	public var siteOwner : String?
	public var twitter : String?
	public var phoneNumberHome : String?
	public var lastName : String?
	public var emailAddress : String?
	public var profile : String?
	public var userUUID : String?
	public var privateNotes : String?
	public var userName : String?
	public var id : Int?
	public var companyName : String?
	public var lastChangedOn : String?
	public var phoneNumberOffice : String?
	public var deleted : String?
	public var notes : String?
	public var phoneNumberMobile : String?
	public var firstName : String?
	public var userType : String?
    public var permissions : [String : Any]?
	public var imService : String?
	public var address : Address?
	public var imHandle : String?
	public var createdAt : String?
	public var phoneNumberOfficeExt : String?
	public var companyId : Int?
	public var hasAccessToNewProjects : String?
	public var phoneNumberFax : String?
	public var avatarUrl : String?
	public var inOwnerCompany : Int?
	public var lastLogin : String?
	public var emailAlt1 : String?
	public var emailAlt2 : String?
	public var emailAlt3 : String?
	public var title : String?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		administrator = dictionary["administrator"] as? String
		pid = dictionary["pid"] as? String
		siteOwner = dictionary["site-owner"] as? String
		twitter = dictionary["twitter"] as? String
		phoneNumberHome = dictionary["phone-number-home"] as? String
		lastName = dictionary["last-name"] as? String
		emailAddress = dictionary["email-address"] as? String
		profile = dictionary["profile"] as? String
		userUUID = dictionary["userUUID"] as? String
		privateNotes = dictionary["private-notes"] as? String
		userName = dictionary["user-name"] as? String
		id = dictionary["id"] as? Int
		companyName = dictionary["company-name"] as? String
		lastChangedOn = dictionary["last-changed-on"] as? String
		phoneNumberOffice = dictionary["phone-number-office"] as? String
		deleted = dictionary["deleted"] as? String
		notes = dictionary["notes"] as? String
		phoneNumberMobile = dictionary["phone-number-mobile"] as? String
		firstName = dictionary["first-name"] as? String
		userType = dictionary["user-type"] as? String
        permissions = dictionary["permissions"] as? [String : Any]
		imService = dictionary["im-service"] as? String
		if (dictionary["address"] != nil) { address = Address(dictionary: dictionary["address"] as! NSDictionary) }
		imHandle = dictionary["im-handle"] as? String
		createdAt = dictionary["created-at"] as? String
		phoneNumberOfficeExt = dictionary["phone-number-office-ext"] as? String
		companyId = dictionary["company-id"] as? Int
		hasAccessToNewProjects = dictionary["has-access-to-new-projects"] as? String
		phoneNumberFax = dictionary["phone-number-fax"] as? String
		avatarUrl = dictionary["avatar-url"] as? String
		inOwnerCompany = dictionary["in-owner-company"] as? Int
		lastLogin = dictionary["last-login"] as? String
		emailAlt1 = dictionary["email-alt-1"] as? String
		emailAlt2 = dictionary["email-alt-2"] as? String
		emailAlt3 = dictionary["email-alt-3"] as? String
		title = dictionary["title"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.administrator, forKey: "administrator")
		dictionary.setValue(self.pid, forKey: "pid")
		dictionary.setValue(self.siteOwner, forKey: "site-owner")
		dictionary.setValue(self.twitter, forKey: "twitter")
		dictionary.setValue(self.phoneNumberHome, forKey: "phone-number-home")
		dictionary.setValue(self.lastName, forKey: "last-name")
		dictionary.setValue(self.emailAddress, forKey: "email-address")
		dictionary.setValue(self.profile, forKey: "profile")
		dictionary.setValue(self.userUUID, forKey: "userUUID")
		dictionary.setValue(self.privateNotes, forKey: "private-notes")
		dictionary.setValue(self.userName, forKey: "user-name")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.companyName, forKey: "company-name")
		dictionary.setValue(self.lastChangedOn, forKey: "last-changed-on")
		dictionary.setValue(self.phoneNumberOffice, forKey: "phone-number-office")
		dictionary.setValue(self.deleted, forKey: "deleted")
		dictionary.setValue(self.notes, forKey: "notes")
		dictionary.setValue(self.phoneNumberMobile, forKey: "phone-number-mobile")
		dictionary.setValue(self.firstName, forKey: "first-name")
		dictionary.setValue(self.userType, forKey: "user-type")
		dictionary.setValue(self.permissions, forKey: "permissions")
		dictionary.setValue(self.imService, forKey: "im-service")
		dictionary.setValue(self.address?.dictionaryRepresentation(), forKey: "address")
		dictionary.setValue(self.imHandle, forKey: "im-handle")
		dictionary.setValue(self.createdAt, forKey: "created-at")
		dictionary.setValue(self.phoneNumberOfficeExt, forKey: "phone-number-office-ext")
		dictionary.setValue(self.companyId, forKey: "company-id")
		dictionary.setValue(self.hasAccessToNewProjects, forKey: "has-access-to-new-projects")
		dictionary.setValue(self.phoneNumberFax, forKey: "phone-number-fax")
		dictionary.setValue(self.avatarUrl, forKey: "avatar-url")
		dictionary.setValue(self.inOwnerCompany, forKey: "in-owner-company")
		dictionary.setValue(self.lastLogin, forKey: "last-login")
		dictionary.setValue(self.emailAlt1, forKey: "email-alt-1")
		dictionary.setValue(self.emailAlt2, forKey: "email-alt-2")
		dictionary.setValue(self.emailAlt3, forKey: "email-alt-3")
		dictionary.setValue(self.title, forKey: "title")

		return dictionary
	}

}
