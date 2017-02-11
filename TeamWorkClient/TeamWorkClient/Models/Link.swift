/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Link: Model {
	public var projectId : Int?
	public var name : String?
	public var description : String?
	public var createdByUserfirstname : String?
	public var height : Int?
	public var privateValue : Int?
	public var width : Int?
	public var createdByUserId : Int?
	public var createdByUserlastname : String?
	public var categoryId : Int?
	public var openInNewWindow : Int?
	public var id : Int?
	public var provider : String?
	public var createdDate : String?
	public var categoryName : String?
	public var code : String?

	required public init?(dictionary: NSDictionary) {
		
        super.init(dictionary: dictionary)
		projectId = dictionary["project-id"] as? Int
		name = dictionary["name"] as? String
		description = dictionary["description"] as? String
		createdByUserfirstname = dictionary["created-by-userfirstname"] as? String
		height = dictionary["height"] as? Int
		privateValue = dictionary["private"] as? Int
		width = dictionary["width"] as? Int
		createdByUserId = dictionary["created-by-userId"] as? Int
		createdByUserlastname = dictionary["created-by-userlastname"] as? String
		categoryId = dictionary["category-id"] as? Int
		openInNewWindow = dictionary["open-in-new-window"] as? Int
		id = dictionary["id"] as? Int
		provider = dictionary["provider"] as? String
		createdDate = dictionary["created-date"] as? String
		categoryName = dictionary["category-name"] as? String
		code = dictionary["code"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.projectId, forKey: "project-id")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.createdByUserfirstname, forKey: "created-by-userfirstname")
		dictionary.setValue(self.height, forKey: "height")
		dictionary.setValue(self.privateValue, forKey: "private")
		dictionary.setValue(self.width, forKey: "width")
		dictionary.setValue(self.createdByUserId, forKey: "created-by-userId")
		dictionary.setValue(self.createdByUserlastname, forKey: "created-by-userlastname")
		dictionary.setValue(self.categoryId, forKey: "category-id")
		dictionary.setValue(self.openInNewWindow, forKey: "open-in-new-window")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.provider, forKey: "provider")
		dictionary.setValue(self.createdDate, forKey: "created-date")
		dictionary.setValue(self.categoryName, forKey: "category-name")
		dictionary.setValue(self.code, forKey: "code")

		return dictionary
	}

}
