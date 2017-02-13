/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Person: Model {
	public var firstName : String?
	public var lastName : String?
	public var emailAddress : String?
	public var userType : String?
	public var userName : String?
	public var password : String?
	public var companyId : String?
	public var title : String?
	public var phoneNumberMobile : String?
	public var phoneNumberOffice : String?
	public var phoneNumberOfficeExt : String?
	public var phoneNumberFax : String?
	public var phoneNumberHome : String?
	public var imHandle : String?
	public var imService : String?
	public var dateFormat : String?
	public var sendWelcomeEmail : String?
	public var welcomeEmailMessage : String?
	public var receiveDailyReports : String?
	public var autoGiveProjectAccess : String?
	public var openId : String?
	public var notes : String?
	public var userLanguage : String?
	public var administrator : String?
	public var canAddProjects : String?
	public var timezoneId : String?
	public var notifyOnTaskComplete : String?
	public var userReceiveNotifyWarnings : String?
	public var notifyOnAddedAsFollower : String?
	public var notifyOnStatusUpdate : String?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		firstName = dictionary["first-name"] as? String
		lastName = dictionary["last-name"] as? String
		emailAddress = dictionary["email-address"] as? String
		userType = dictionary["user-type"] as? String
		userName = dictionary["user-name"] as? String
		password = dictionary["password"] as? String
		companyId = unwrapIdValue(dictionary["company-id"])
		title = dictionary["title"] as? String
		phoneNumberMobile = dictionary["phone-number-mobile"] as? String
		phoneNumberOffice = dictionary["phone-number-office"] as? String
		phoneNumberOfficeExt = dictionary["phone-number-office-ext"] as? String
		phoneNumberFax = dictionary["phone-number-fax"] as? String
		phoneNumberHome = dictionary["phone-number-home"] as? String
		imHandle = dictionary["im-handle"] as? String
		imService = dictionary["im-service"] as? String
		dateFormat = dictionary["dateFormat"] as? String
		sendWelcomeEmail = dictionary["sendWelcomeEmail"] as? String
		welcomeEmailMessage = dictionary["welcomeEmailMessage"] as? String
		receiveDailyReports = dictionary["receiveDailyReports"] as? String
		autoGiveProjectAccess = dictionary["autoGiveProjectAccess"] as? String
		openId = unwrapIdValue(dictionary["openID"])
		notes = dictionary["notes"] as? String
		userLanguage = dictionary["userLanguage"] as? String
		administrator = dictionary["administrator"] as? String
		canAddProjects = dictionary["canAddProjects"] as? String
		timezoneId = unwrapIdValue(dictionary["timezoneId"])
		notifyOnTaskComplete = dictionary["notifyOnTaskComplete"] as? String
		userReceiveNotifyWarnings = dictionary["userReceiveNotifyWarnings"] as? String
		notifyOnAddedAsFollower = dictionary["notify-on-added-as-follower"] as? String
		notifyOnStatusUpdate = dictionary["notify-on-status-update"] as? String
	}

		
	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.firstName, forKey: "first-name")
		dictionary.setValue(self.lastName, forKey: "last-name")
		dictionary.setValue(self.emailAddress, forKey: "email-address")
		dictionary.setValue(self.userType, forKey: "user-type")
		dictionary.setValue(self.userName, forKey: "user-name")
		dictionary.setValue(self.password, forKey: "password")
		dictionary.setValue(self.companyId, forKey: "company-id")
		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.phoneNumberMobile, forKey: "phone-number-mobile")
		dictionary.setValue(self.phoneNumberOffice, forKey: "phone-number-office")
		dictionary.setValue(self.phoneNumberOfficeExt, forKey: "phone-number-office-ext")
		dictionary.setValue(self.phoneNumberFax, forKey: "phone-number-fax")
		dictionary.setValue(self.phoneNumberHome, forKey: "phone-number-home")
		dictionary.setValue(self.imHandle, forKey: "im-handle")
		dictionary.setValue(self.imService, forKey: "im-service")
		dictionary.setValue(self.dateFormat, forKey: "dateFormat")
		dictionary.setValue(self.sendWelcomeEmail, forKey: "sendWelcomeEmail")
		dictionary.setValue(self.welcomeEmailMessage, forKey: "welcomeEmailMessage")
		dictionary.setValue(self.receiveDailyReports, forKey: "receiveDailyReports")
		dictionary.setValue(self.autoGiveProjectAccess, forKey: "autoGiveProjectAccess")
		dictionary.setValue(self.openId, forKey: "openID")
		dictionary.setValue(self.notes, forKey: "notes")
		dictionary.setValue(self.userLanguage, forKey: "userLanguage")
		dictionary.setValue(self.administrator, forKey: "administrator")
		dictionary.setValue(self.canAddProjects, forKey: "canAddProjects")
		dictionary.setValue(self.timezoneId, forKey: "timezoneId")
		dictionary.setValue(self.notifyOnTaskComplete, forKey: "notifyOnTaskComplete")
		dictionary.setValue(self.userReceiveNotifyWarnings, forKey: "userReceiveNotifyWarnings")
		dictionary.setValue(self.notifyOnAddedAsFollower, forKey: "notify-on-added-as-follower")
		dictionary.setValue(self.notifyOnStatusUpdate, forKey: "notify-on-status-update")

		return dictionary
	}

}
