/*
 Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

import Foundation

/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Activity: Model {
    public var projectId : String?
    public var itemId : String?
    public var todoListName : String?
    public var fromUserAvatarUrl : String?
    public var descriptionValue : String?
    public var forUsername : String?
    public var publicInfo : String?
    public var forUserId : String?
    public var itemLink : String?
    public var datetime : String?
    public var activityType : String?
    public var projectName : String?
    public var link : String?
    public var extraDescription : String?
    public var isPrivate : Int?
    public var id : String?
    public var dueDate : Int?
    public var fromUsername : String?
    public var type : String?
    public var forUserAvatarUrl : String?
    public var userId : String?
    
    
    public required init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)
        
        projectId = dictionary["project-id"] as? String
        itemId = unwrapIdValue(dictionary["itemid"])
        todoListName = dictionary["todo-list-name"] as? String
        fromUserAvatarUrl = dictionary["from-user-avatar-url"] as? String
        descriptionValue = dictionary["description"] as? String
        forUsername = dictionary["forusername"] as? String
        publicInfo = dictionary["publicinfo"] as? String
        forUserId = unwrapIdValue(dictionary["foruserid"])
        itemLink = dictionary["itemlink"] as? String
        datetime = dictionary["datetime"] as? String
        activityType = dictionary["activitytype"] as? String
        projectName = dictionary["project-name"] as? String
        link = dictionary["link"] as? String
        extraDescription = dictionary["extradescription"] as? String
        isPrivate = dictionary["isprivate"] as? Int
        id = unwrapIdValue(dictionary["id"])
        dueDate = dictionary["due-date"] as? Int
        fromUsername = dictionary["fromusername"] as? String
        type = dictionary["type"] as? String
        forUserAvatarUrl = dictionary["for-user-avatar-url"] as? String
        userId = dictionary["userid"] as? String
    }
    
    
    override public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.projectId, forKey: "project-id")
        dictionary.setValue(self.itemId, forKey: "itemid")
        dictionary.setValue(self.todoListName, forKey: "todo-list-name")
        dictionary.setValue(self.fromUserAvatarUrl, forKey: "from-user-avatar-url")
        dictionary.setValue(self.descriptionValue, forKey: "description")
        dictionary.setValue(self.forUsername, forKey: "forusername")
        dictionary.setValue(self.publicInfo, forKey: "publicinfo")
        dictionary.setValue(self.forUserId, forKey: "foruserid")
        dictionary.setValue(self.itemLink, forKey: "itemlink")
        dictionary.setValue(self.datetime, forKey: "datetime")
        dictionary.setValue(self.activityType, forKey: "activitytype")
        dictionary.setValue(self.projectName, forKey: "project-name")
        dictionary.setValue(self.link, forKey: "link")
        dictionary.setValue(self.extraDescription, forKey: "extradescription")
        dictionary.setValue(self.isPrivate, forKey: "isprivate")
        dictionary.setValue(self.id, forKey: "id")
        dictionary.setValue(self.dueDate, forKey: "due-date")
        dictionary.setValue(self.fromUsername, forKey: "fromusername")
        dictionary.setValue(self.type, forKey: "type")
        dictionary.setValue(self.forUserAvatarUrl, forKey: "for-user-avatar-url")
        dictionary.setValue(self.userId, forKey: "userid")
        
        return dictionary
    }
    
}
