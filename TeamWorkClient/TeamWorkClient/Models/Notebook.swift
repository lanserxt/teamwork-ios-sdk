/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Notebook: Model {
	public var projectId : String?
	public var updatedByUserId : String?
	public var readCommentsCount : Int?
	public var name : String?
	public var description : String?
	public var createdByUserfirstname : String?
	public var commentsCount : Int?
	public var versionId : String?
	public var privateValue : Int?
	public var lockdownId : String?
	public var updatedByUserlastname : String?
	public var updatedDate : String?
	public var createdByUserId : String?
	public var createdByUserlastname : String?
	public var categoryId : String?
	public var version : Int?
	public var userDisplayUpdatedDate : String?
	public var userDisplayUpdatedTime : String?
	public var id : String?
	public var nrComments : Int?
	public var updatedByUserfirstname : String?
	public var createdDate : String?
	public var locked : Int?
	public var categoryName : String?
    
	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
        
		projectId = unwrapIdValue(dictionary["project-id"])
		updatedByUserId = unwrapIdValue(dictionary["updated-by-userId"])
		readCommentsCount = dictionary["read-comments-count"] as? Int
		name = dictionary["name"] as? String
		description = dictionary["description"] as? String
		createdByUserfirstname = dictionary["created-by-userfirstname"] as? String
		commentsCount = dictionary["comments-count"] as? Int
		versionId = unwrapIdValue(dictionary["version-id"])
		privateValue = dictionary["private"] as? Int
		lockdownId = unwrapIdValue(dictionary["lockdown-id"])
		updatedByUserlastname = dictionary["updated-by-userlastname"] as? String
		updatedDate = dictionary["updated-date"] as? String
		createdByUserId = unwrapIdValue(dictionary["created-by-userId"])
		createdByUserlastname = dictionary["created-by-userlastname"] as? String
		categoryId = unwrapIdValue(dictionary["category-id"])
		version = dictionary["version"] as? Int
		userDisplayUpdatedDate = dictionary["user-display-updated-date"] as? String
		userDisplayUpdatedTime = dictionary["user-display-updated-time"] as? String
		id = unwrapIdValue(dictionary["id"])
		nrComments = dictionary["nr-comments"] as? Int
		updatedByUserfirstname = dictionary["updated-by-userfirstname"] as? String
		createdDate = dictionary["created-date"] as? String
		locked = dictionary["locked"] as? Int
		categoryName = dictionary["category-name"] as? String
	}

		
	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.projectId, forKey: "project-id")
		dictionary.setValue(self.updatedByUserId, forKey: "updated-by-userId")
		dictionary.setValue(self.readCommentsCount, forKey: "read-comments-count")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.createdByUserfirstname, forKey: "created-by-userfirstname")
		dictionary.setValue(self.commentsCount, forKey: "comments-count")
		dictionary.setValue(self.versionId, forKey: "version-id")
		dictionary.setValue(self.privateValue, forKey: "private")
		dictionary.setValue(self.lockdownId, forKey: "lockdown-id")
		dictionary.setValue(self.updatedByUserlastname, forKey: "updated-by-userlastname")
		dictionary.setValue(self.updatedDate, forKey: "updated-date")
		dictionary.setValue(self.createdByUserId, forKey: "created-by-userId")
		dictionary.setValue(self.createdByUserlastname, forKey: "created-by-userlastname")
		dictionary.setValue(self.categoryId, forKey: "category-id")
		dictionary.setValue(self.version, forKey: "version")
		dictionary.setValue(self.userDisplayUpdatedDate, forKey: "user-display-updated-date")
		dictionary.setValue(self.userDisplayUpdatedTime, forKey: "user-display-updated-time")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.nrComments, forKey: "nr-comments")
		dictionary.setValue(self.updatedByUserfirstname, forKey: "updated-by-userfirstname")
		dictionary.setValue(self.createdDate, forKey: "created-date")
		dictionary.setValue(self.locked, forKey: "locked")
		dictionary.setValue(self.categoryName, forKey: "category-name")

		return dictionary
	}

}
