/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class FullMessageReply: Model {
	public var authorLastname : String?
	public var attachmentsCount : Int?
	public var emailedFrom : String?
	public var authorAvatarUrl : String?
	public var authorId : String?
	public var postedOn : String?
	public var body : String?
	public var attachments : Array<String>?
	public var authorFirstname : String?
	public var id : String?
	public var lastChangedOn : String?
	public var messageId : String?

    required public init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)

		authorLastname = dictionary["author-lastname"] as? String
		attachmentsCount = dictionary["attachments-count"] as? Int
		emailedFrom = dictionary["emailed-from"] as? String
		authorAvatarUrl = dictionary["author-avatar-url"] as? String
		authorId = dictionary["author_id"] as? String
		postedOn = dictionary["posted-on"] as? String
		body = dictionary["body"] as? String
		//if (dictionary["attachments"] != nil) { attachments = Attachments.modelsFromDictionaryArray(dictionary["attachments"] as! NSArray) }
		authorFirstname = dictionary["author-firstname"] as? String
		id = dictionary["id"] as? String
		lastChangedOn = dictionary["last-changed-on"] as? String
		messageId = dictionary["messageId"] as? String
	}

		
	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.authorLastname, forKey: "author-lastname")
		dictionary.setValue(self.attachmentsCount, forKey: "attachments-count")
		dictionary.setValue(self.emailedFrom, forKey: "emailed-from")
		dictionary.setValue(self.authorAvatarUrl, forKey: "author-avatar-url")
		dictionary.setValue(self.authorId, forKey: "author_id")
		dictionary.setValue(self.postedOn, forKey: "posted-on")
		dictionary.setValue(self.body, forKey: "body")
		dictionary.setValue(self.authorFirstname, forKey: "author-firstname")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.lastChangedOn, forKey: "last-changed-on")
		dictionary.setValue(self.authorId, forKey: "author-id")
		dictionary.setValue(self.messageId, forKey: "messageId")

		return dictionary
	}

}
