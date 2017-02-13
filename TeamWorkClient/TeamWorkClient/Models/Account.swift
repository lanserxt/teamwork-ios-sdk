//
//  Account.swift
//  TeamWorkClient
//
//  Created by   on 14.01.17.
//  Copyright © 2017  . All rights reserved.
//

import Foundation

public class Account: Model {
    
    //MARK:- Variables
    
	public var requireHttps : String?
	public var timeTrackingEnabled : String?
	public var name : String?
	public var dateSignedUp : String?
	public var companyName : String?
	public var sslEnabled : String?
	public var createdAt : String?
	public var cacheUUID : String?
	public var accountHolderId : String?
	public var logo : String?
	public var id : String?
	public var url : String?
	public var emailNotificationEnabled : String?
	public var companyid : String?
	public var lang : String?
	public var code : String?

    //MARK:- Init
    
	public required init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
        
		requireHttps = dictionary["requirehttps"] as? String
		timeTrackingEnabled = dictionary["time-tracking-enabled"] as? String
		name = dictionary["name"] as? String
		dateSignedUp = dictionary["datesignedup"] as? String
		companyName = dictionary["companyname"] as? String
		sslEnabled = dictionary["ssl-enabled"] as? String
		createdAt = dictionary["created-at"] as? String
		cacheUUID = dictionary["cacheUUID"] as? String
		accountHolderId =  unwrapIdValue(dictionary["account-holder-id"])
		logo = dictionary["logo"] as? String
		id = unwrapIdValue(dictionary["id"])
		url = dictionary["URL"] as? String
		emailNotificationEnabled = dictionary["email-notification-enabled"] as? String
		companyid = dictionary["companyid"] as? String
		lang = dictionary["lang"] as? String
		code = dictionary["code"] as? String
	}

    //MARK:- Methods
    
	override public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.requireHttps, forKey: "requirehttps")
		dictionary.setValue(self.timeTrackingEnabled, forKey: "time-tracking-enabled")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.dateSignedUp, forKey: "datesignedup")
		dictionary.setValue(self.companyName, forKey: "companyname")
		dictionary.setValue(self.sslEnabled, forKey: "ssl-enabled")
		dictionary.setValue(self.createdAt, forKey: "created-at")
		dictionary.setValue(self.cacheUUID, forKey: "cacheUUID")
		dictionary.setValue(self.accountHolderId, forKey: "account-holder-id")
		dictionary.setValue(self.logo, forKey: "logo")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.url, forKey: "URL")
		dictionary.setValue(self.emailNotificationEnabled, forKey: "email-notification-enabled")
		dictionary.setValue(self.companyid, forKey: "companyid")
		dictionary.setValue(self.lang, forKey: "lang")
		dictionary.setValue(self.code, forKey: "code")

		return dictionary
	}

}
