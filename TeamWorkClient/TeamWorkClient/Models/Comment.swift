/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Comment: Model {
	public var projectId : String?
	public var attachmentsCount : Int?
	public var authorLastname : String?
	public var commentableId : Int?
	public var commentableType : String?
	public var emailedFrom : String?
	public var isRead : Int?
	public var privateValue : Int?
	public var lockdownId : String?
	public var datetime : String?
	public var authorAvatarUrl : String?
	public var authorId : String?
	public var id : String?
	public var companyName : String?
	public var lastChangedOn : String?
	public var contentType : String?
	public var nrNotifiedPeople : Int?
	public var type : String?
	public var itemName : String?
	public var companyId : String?
	public var htmlBody : String?
	public var projectName : String?
	public var body : String?
	public var commentNo : Int?
	public var authorFirstname : String?
	public var commentLink : String?

    required public init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)

		projectId = dictionary["project-id"] as? String
		authorLastname = dictionary["author-lastname"] as? String
		commentableId = dictionary["commentable-id"] as? Int
		commentableType = dictionary["commentable_type"] as? String
		emailedFrom = dictionary["emailed-from"] as? String
		isRead = dictionary["isRead"] as? Int
		privateValue = dictionary["private"] as? Int
		lockdownId = dictionary["lockdown-id"] as? String
		datetime = dictionary["datetime"] as? String
		authorAvatarUrl = dictionary["author-avatar-url"] as? String
		authorId = dictionary["author_id"] as? String
		id = dictionary["id"] as? String
		companyName = dictionary["company-name"] as? String
		lastChangedOn = dictionary["last-changed-on"] as? String
		contentType = dictionary["content-type"] as? String
		nrNotifiedPeople = dictionary["nr-notified-people"] as? Int
		type = dictionary["type"] as? String
		itemName = dictionary["item-name"] as? String
		attachmentsCount = dictionary["attachments-count"] as? Int
		companyId = dictionary["company-id"] as? String
		htmlBody = dictionary["html-body"] as? String
		projectName = dictionary["project-name"] as? String
		body = dictionary["body"] as? String
		commentNo = dictionary["commentNo"] as? Int
		authorFirstname = dictionary["author-firstname"] as? String
		commentLink = dictionary["comment-link"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.projectId, forKey: "project-id")
		dictionary.setValue(self.authorLastname, forKey: "author-lastname")
		dictionary.setValue(self.commentableId, forKey: "commentable-id")
		dictionary.setValue(self.commentableType, forKey: "commentable_type")
		dictionary.setValue(self.emailedFrom, forKey: "emailed-from")
		dictionary.setValue(self.isRead, forKey: "isRead")
		dictionary.setValue(self.privateValue, forKey: "private")
		dictionary.setValue(self.lockdownId, forKey: "lockdown-id")
		dictionary.setValue(self.datetime, forKey: "datetime")
		dictionary.setValue(self.authorAvatarUrl, forKey: "author-avatar-url")
		dictionary.setValue(self.authorId, forKey: "author_id")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.companyName, forKey: "company-name")
		dictionary.setValue(self.lastChangedOn, forKey: "last-changed-on")
		dictionary.setValue(self.contentType, forKey: "content-type")
		dictionary.setValue(self.nrNotifiedPeople, forKey: "nr-notified-people")
		dictionary.setValue(self.type, forKey: "type")
		dictionary.setValue(self.itemName, forKey: "item-name")
		dictionary.setValue(self.attachmentsCount, forKey: "attachments-count")
		dictionary.setValue(self.companyId, forKey: "company-id")
		dictionary.setValue(self.htmlBody, forKey: "html-body")
		dictionary.setValue(self.projectName, forKey: "project-name")
		dictionary.setValue(self.body, forKey: "body")
		dictionary.setValue(self.commentNo, forKey: "commentNo")
		dictionary.setValue(self.authorFirstname, forKey: "author-firstname")
		dictionary.setValue(self.commentLink, forKey: "comment-link")
		dictionary.setValue(self.authorId, forKey: "author-id")

		return dictionary
	}

}
