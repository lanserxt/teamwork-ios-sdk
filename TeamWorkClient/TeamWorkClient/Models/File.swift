/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class File: Model {
	public var projectId : String?
	public var uploadedByUserLastName : String?
	public var name : String?
	public var uploadedDate : String?
	public var uploadedByUserId : Int?
	public var description : String?
	public var commentsCount : Int?
	public var versionId : Int?
	public var privateValue : Int?
	public var downloadUrl : String?
	public var categoryId : String?
	public var projectName : String?
	public var version : Int?
	public var originalName : String?
	public var id : String?
	public var size : Int?
	public var fileSource : String?
	public var uploadedByUserFirstName : String?
	public var categoryName : String?

    public required init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)

		projectId = dictionary["project-id"] as? String
		uploadedByUserLastName = dictionary["uploaded-by-user-last-name"] as? String
		name = dictionary["name"] as? String
		uploadedDate = dictionary["uploaded-date"] as? String
		uploadedByUserId = dictionary["uploaded-by-userId"] as? Int
		description = dictionary["description"] as? String
		commentsCount = dictionary["comments-count"] as? Int
		versionId = dictionary["version-id"] as? Int
		privateValue = dictionary["private"] as? Int
		downloadUrl = dictionary["download-URL"] as? String
		categoryId = dictionary["category-id"] as? String
		projectName = dictionary["project-name"] as? String
		version = dictionary["version"] as? Int
		originalName = dictionary["originalName"] as? String
		id = dictionary["id"] as? String
		size = dictionary["size"] as? Int
		fileSource = dictionary["file-source"] as? String
		uploadedByUserFirstName = dictionary["uploaded-by-user-first-name"] as? String
		categoryName = dictionary["category-name"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.projectId, forKey: "project-id")
		dictionary.setValue(self.uploadedByUserLastName, forKey: "uploaded-by-user-last-name")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.uploadedDate, forKey: "uploaded-date")
		dictionary.setValue(self.uploadedByUserId, forKey: "uploaded-by-userId")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.commentsCount, forKey: "comments-count")
		dictionary.setValue(self.versionId, forKey: "version-id")
		dictionary.setValue(self.privateValue, forKey: "private")
		dictionary.setValue(self.downloadUrl, forKey: "download-URL")
		dictionary.setValue(self.categoryId, forKey: "category-id")
		dictionary.setValue(self.projectName, forKey: "project-name")
		dictionary.setValue(self.version, forKey: "version")
		dictionary.setValue(self.originalName, forKey: "originalName")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.size, forKey: "size")
		dictionary.setValue(self.fileSource, forKey: "file-source")
		dictionary.setValue(self.uploadedByUserFirstName, forKey: "uploaded-by-user-first-name")
		dictionary.setValue(self.categoryName, forKey: "category-name")

		return dictionary
	}

}
