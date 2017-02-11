/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class AllMessageReplies: Model {
	public var attachmentsCount : Int?
	public var authorLastname : String?
	public var numNotified : Int?
	public var isRead : Int?
	public var datetime : String?
	public var authorAvatarUrl : String?
	public var authorId : Int?
	public var id : Int?
	public var contentType : String?
	public var lastChangedOn : String?
	public var isOriginal : Int?
	public var userDisplayPostedDate : String?
	public var userDisplayPostedTime : String?
	public var messageStatus : String?
	public var attachmentsCount : Int?
	public var postedOn : String?
	public var body : String?
	public var authorFirstname : String?
	public var attachments : Array<String>?
	public var authorId : Int?
	public var postStatus : String?
	public var displayBody : String?
	public var messageId : Int?
	public var replyNo : Int?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let allmessageReplies_list = AllmessageReplies.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of AllmessageReplies Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Model]
    {
        var models:[AllMessageReplies] = []
        for item in array
        {
            models.append(AllMessageReplies(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let allmessageReplies = AllmessageReplies(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: AllmessageReplies Instance.
*/
	required public init?(dictionary: NSDictionary) {

		attachmentsCount = dictionary["attachments_count"] as? Int
		authorLastname = dictionary["author-lastname"] as? String
		numNotified = dictionary["numNotified"] as? Int
		isRead = dictionary["isRead"] as? Int
		datetime = dictionary["datetime"] as? String
		authorAvatarUrl = dictionary["author-avatar-url"] as? String
		authorId = dictionary["author_id"] as? Int
		id = dictionary["id"] as? Int
		contentType = dictionary["content-type"] as? String
		lastChangedOn = dictionary["last-changed-on"] as? String
		isOriginal = dictionary["isOriginal"] as? Int
		userDisplayPostedDate = dictionary["user-display-posted-date"] as? String
		userDisplayPostedTime = dictionary["user-display-posted-time"] as? String
		messageStatus = dictionary["message-status"] as? String
		attachmentsCount = dictionary["attachments-count"] as? Int
		postedOn = dictionary["posted-on"] as? String
		body = dictionary["body"] as? String
		authorFirstname = dictionary["author-firstname"] as? String
        if (dictionary["attachments"] != nil) { attachments = Attachments.modelsFromDictionaryArray(array: dictionary["attachments"] as! NSArray) }
		authorId = dictionary["author-id"] as? Int
		postStatus = dictionary["post-status"] as? String
		displayBody = dictionary["display-body"] as? String
		messageId = dictionary["messageId"] as? Int
		replyNo = dictionary["replyNo"] as? Int
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.attachmentsCount, forKey: "attachments_count")
		dictionary.setValue(self.authorLastname, forKey: "author-lastname")
		dictionary.setValue(self.numNotified, forKey: "numNotified")
		dictionary.setValue(self.isRead, forKey: "isRead")
		dictionary.setValue(self.datetime, forKey: "datetime")
		dictionary.setValue(self.authorAvatarUrl, forKey: "author-avatar-url")
		dictionary.setValue(self.authorId, forKey: "author_id")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.contentType, forKey: "content-type")
		dictionary.setValue(self.lastChangedOn, forKey: "last-changed-on")
		dictionary.setValue(self.isOriginal, forKey: "isOriginal")
		dictionary.setValue(self.userDisplayPostedDate, forKey: "user-display-posted-date")
		dictionary.setValue(self.userDisplayPostedTime, forKey: "user-display-posted-time")
		dictionary.setValue(self.messageStatus, forKey: "message-status")
		dictionary.setValue(self.attachmentsCount, forKey: "attachments-count")
		dictionary.setValue(self.postedOn, forKey: "posted-on")
		dictionary.setValue(self.body, forKey: "body")
		dictionary.setValue(self.authorFirstname, forKey: "author-firstname")
		dictionary.setValue(self.authorId, forKey: "author-id")
		dictionary.setValue(self.postStatus, forKey: "post-status")
		dictionary.setValue(self.displayBody, forKey: "display-body")
		dictionary.setValue(self.messageId, forKey: "messageId")
		dictionary.setValue(self.replyNo, forKey: "replyNo")

		return dictionary
	}

}
