//
//  AuthAccount.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 26.01.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import Foundation

public class AuthAccount: Model {
    
    //MARK:- Variables
    
    public var requireHttps : String?
    public var canAddProjects : Int?
    public var userIsMemberOfOwnerCompany : String?
    public var name : String?
    public var userIsAdmin : String?
    public var companyName : String?
    public var canManagePeople : Int?
    public var sslEnabled : String?
    public var firstname : String?
    public var dateSeperator : String?
    public var timeFormat : String?
    public var logo : String?
    public var avatarUrl : String?
    public var startOnSundays : String?
    public var id : String?
    public var url : String?
    public var dateFormat : String?
    public var lang : String?
    public var companyId : String?
    public var code : String?
    public var userId : Int?
    public var lastname : String?
    
    //MARK:- Init
    
    public required init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)
        
        requireHttps = dictionary["requirehttps"] as? String
        canAddProjects = dictionary["canaddprojects"] as? Int
        userIsMemberOfOwnerCompany = dictionary["userIsMemberOfOwnerCompany"] as? String
        name = dictionary["name"] as? String
        userIsAdmin = dictionary["userIsAdmin"] as? String
        companyName = dictionary["companyname"] as? String
        canManagePeople = dictionary["canManagePeople"] as? Int
        sslEnabled = dictionary["ssl-enabled"] as? String
        firstname = dictionary["firstname"] as? String
        dateSeperator = dictionary["dateSeperator"] as? String
        timeFormat = dictionary["timeFormat"] as? String
        logo = dictionary["logo"] as? String
        avatarUrl = dictionary["avatar-url"] as? String
        startOnSundays = dictionary["startonsundays"] as? String
        id = dictionary["id"] as? String
        url = dictionary["URL"] as? String
        dateFormat = dictionary["dateFormat"] as? String
        lang = dictionary["lang"] as? String
        companyId = dictionary["companyid"] as? String
        code = dictionary["code"] as? String
        userId = dictionary["userId"] as? Int
        lastname = dictionary["lastname"] as? String
    }
    
    //MARK:- Methods
    
    public class func modelsFromDictionaryArray(array:NSArray) -> [AuthAccount]
    {
        var models:[AuthAccount] = []
        for item in array
        {
            models.append(AuthAccount(dictionary: item as! NSDictionary)!)
        }
        return models
    }
    
    override public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.requireHttps, forKey: "requirehttps")
        dictionary.setValue(self.canAddProjects, forKey: "canaddprojects")
        dictionary.setValue(self.userIsMemberOfOwnerCompany, forKey: "userIsMemberOfOwnerCompany")
        dictionary.setValue(self.name, forKey: "name")
        dictionary.setValue(self.userIsAdmin, forKey: "userIsAdmin")
        dictionary.setValue(self.companyName, forKey: "companyname")
        dictionary.setValue(self.canManagePeople, forKey: "canManagePeople")
        dictionary.setValue(self.sslEnabled, forKey: "ssl-enabled")
        dictionary.setValue(self.firstname, forKey: "firstname")
        dictionary.setValue(self.dateSeperator, forKey: "dateSeperator")
        dictionary.setValue(self.timeFormat, forKey: "timeFormat")
        dictionary.setValue(self.logo, forKey: "logo")
        dictionary.setValue(self.avatarUrl, forKey: "avatar-url")
        dictionary.setValue(self.startOnSundays, forKey: "startonsundays")
        dictionary.setValue(self.id, forKey: "id")
        dictionary.setValue(self.url, forKey: "URL")
        dictionary.setValue(self.dateFormat, forKey: "dateFormat")
        dictionary.setValue(self.lang, forKey: "lang")
        dictionary.setValue(self.companyId, forKey: "companyid")
        dictionary.setValue(self.code, forKey: "code")
        dictionary.setValue(self.userId, forKey: "userId")
        dictionary.setValue(self.lastname, forKey: "lastname")
        
        return dictionary
    }
    
}

