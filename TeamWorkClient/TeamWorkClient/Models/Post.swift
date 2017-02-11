/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Post: Model {
	public var title : String?
	public var categoryId : String?
	public var privateValue : Int?
	public var body : String?
	public var attachments : String?
	public var pendingFileAttachments : String?
	public var tags : String?

    public required init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)

		title = dictionary["title"] as? String
		categoryId = dictionary["category-id"] as? String
		privateValue = dictionary["private"] as? Int
		body = dictionary["body"] as? String
		attachments = dictionary["attachments"] as? String
		pendingFileAttachments = dictionary["pendingFileAttachments"] as? String
		tags = dictionary["tags"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.categoryId, forKey: "category-id")
		dictionary.setValue(self.privateValue, forKey: "private")
		dictionary.setValue(self.body, forKey: "body")
		dictionary.setValue(self.attachments, forKey: "attachments")
		dictionary.setValue(self.pendingFileAttachments, forKey: "pendingFileAttachments")
		dictionary.setValue(self.tags, forKey: "tags")

		return dictionary
	}

}
