/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class FullPost: Model {
	public var projectId : String?
	public var authorFirstName : String?
	public var milestoneId : String?
	public var numNotified : Int?
	public var isRead : Int?
	public var privateValue : Int?
	public var commentsCount : Int?
	public var authorAvatarUrl : String?
	public var authorLastName : String?
	public var id : String?
	public var lastChangedOn : String?
	public var useTextile : String?
	public var contentType : String?
	public var isOriginal : Int?
	public var userDisplayPostedDate : String?
	public var userDisplayPostedTime : String?
	public var messageStatus : String?
	public var attachmentsCount : Int?
	public var postId : String?
	public var categoryId : String?
	public var htmlBody : String?
	public var postedOn : String?
	public var body : String?
	public var attachments : Array<String>?
	public var authorId : String?
	public var postStatus : String?
	public var displayBody : String?
	public var title : String?
	public var categoryName : String?

    public required init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)

		projectId = unwrapIdValue(dictionary["project-id"])
		authorFirstName = dictionary["author-first-name"] as? String
		milestoneId = unwrapIdValue(dictionary["milestone-id"])
		numNotified = dictionary["numNotified"] as? Int
		isRead = dictionary["isRead"] as? Int
		privateValue = dictionary["private"] as? Int
		commentsCount = dictionary["comments-count"] as? Int
		authorAvatarUrl = dictionary["author-avatar-url"] as? String
		authorLastName = dictionary["author-last-name"] as? String
		id = unwrapIdValue(dictionary["id"])
		lastChangedOn = dictionary["last-changed-on"] as? String
		useTextile = dictionary["use-textile"] as? String
		contentType = dictionary["content-type"] as? String
		isOriginal = dictionary["isOriginal"] as? Int
		userDisplayPostedDate = dictionary["user-display-posted-date"] as? String
		userDisplayPostedTime = dictionary["user-display-posted-time"] as? String
		messageStatus = dictionary["message-status"] as? String
		attachmentsCount = dictionary["attachments-count"] as? Int
		postId = unwrapIdValue(dictionary["post-id"])
		categoryId = unwrapIdValue(dictionary["category-id"])
		htmlBody = dictionary["html-body"] as? String
		postedOn = dictionary["posted-on"] as? String
		body = dictionary["body"] as? String
        attachments = dictionary["attachments"] as? Array<String>
		//if (dictionary["attachments"] != nil) { attachments = Attachments.modelsFromDictionaryArray(dictionary["attachments"] as! NSArray) }
		authorId = unwrapIdValue(dictionary["author-id"])
		postStatus = dictionary["post-status"] as? String
		displayBody = dictionary["display-body"] as? String
		title = dictionary["title"] as? String
		categoryName = dictionary["category-name"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.projectId, forKey: "project-id")
		dictionary.setValue(self.authorFirstName, forKey: "author-first-name")
		dictionary.setValue(self.milestoneId, forKey: "milestone-id")
		dictionary.setValue(self.numNotified, forKey: "numNotified")
		dictionary.setValue(self.isRead, forKey: "isRead")
		dictionary.setValue(self.privateValue, forKey: "private")
		dictionary.setValue(self.commentsCount, forKey: "comments-count")
		dictionary.setValue(self.authorAvatarUrl, forKey: "author-avatar-url")
		dictionary.setValue(self.authorLastName, forKey: "author-last-name")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.lastChangedOn, forKey: "last-changed-on")
		dictionary.setValue(self.useTextile, forKey: "use-textile")
		dictionary.setValue(self.contentType, forKey: "content-type")
		dictionary.setValue(self.isOriginal, forKey: "isOriginal")
		dictionary.setValue(self.userDisplayPostedDate, forKey: "user-display-posted-date")
		dictionary.setValue(self.userDisplayPostedTime, forKey: "user-display-posted-time")
		dictionary.setValue(self.messageStatus, forKey: "message-status")
		dictionary.setValue(self.attachmentsCount, forKey: "attachments-count")
		dictionary.setValue(self.postId, forKey: "post-id")
		dictionary.setValue(self.categoryId, forKey: "category-id")
		dictionary.setValue(self.htmlBody, forKey: "html-body")
		dictionary.setValue(self.postedOn, forKey: "posted-on")
		dictionary.setValue(self.body, forKey: "body")
		dictionary.setValue(self.authorId, forKey: "author-id")
		dictionary.setValue(self.postStatus, forKey: "post-status")
		dictionary.setValue(self.displayBody, forKey: "display-body")
		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.categoryName, forKey: "category-name")

		return dictionary
	}

}
