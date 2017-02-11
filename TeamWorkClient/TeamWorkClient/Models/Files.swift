/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Files {
	public var projectId : Int?
	public var uploadedByUserLastName : String?
	public var name : String?
	public var uploadedDate : String?
	public var uploadedByUserId : Int?
	public var description : String?
	public var extraData : String?
	public var commentsCount : Int?
	public var versionId : Int?
	public var privateValue : Int?
	public var status : String?
	public var categoryId : Int?
	public var version : Int?
	public var originalName : String?
	public var id : Int?
	public var lastChangedOn : String?
	public var size : Int?
	public var versions : Array<String>?
	public var thumbURL : String?
	public var fileSource : String?
	public var uploadedByUserFirstName : String?
	public var categoryName : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let files_list = Files.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Files Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Model]
    {
        var models:[Files] = []
        for item in array
        {
            models.append(Files(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let files = Files(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Files Instance.
*/
	required public init?(dictionary: NSDictionary) {

		projectId = dictionary["project-id"] as? Int
		uploadedByUserLastName = dictionary["uploaded-by-user-last-name"] as? String
		name = dictionary["name"] as? String
		uploadedDate = dictionary["uploaded-date"] as? String
		uploadedByUserId = dictionary["uploaded-by-userId"] as? Int
		description = dictionary["description"] as? String
		extraData = dictionary["extraData"] as? String
		commentsCount = dictionary["comments-count"] as? Int
		versionId = dictionary["version-id"] as? Int
		private = dictionary["private"] as? Int
		status = dictionary["status"] as? String
		categoryId = dictionary["category-id"] as? Int
		version = dictionary["version"] as? Int
		originalName = dictionary["originalName"] as? String
		id = dictionary["id"] as? Int
		lastChangedOn = dictionary["last-changed-on"] as? String
		size = dictionary["size"] as? Int
		if (dictionary["versions"] != nil) { versions = Versions.modelsFromDictionaryArray(dictionary["versions"] as! NSArray) }
		thumbURL = dictionary["thumbURL"] as? String
		fileSource = dictionary["file-source"] as? String
		uploadedByUserFirstName = dictionary["uploaded-by-user-first-name"] as? String
		categoryName = dictionary["category-name"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.project-id, forKey: "project-id")
		dictionary.setValue(self.uploaded-by-user-last-name, forKey: "uploaded-by-user-last-name")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.uploaded-date, forKey: "uploaded-date")
		dictionary.setValue(self.uploaded-by-userId, forKey: "uploaded-by-userId")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.extraData, forKey: "extraData")
		dictionary.setValue(self.comments-count, forKey: "comments-count")
		dictionary.setValue(self.version-id, forKey: "version-id")
		dictionary.setValue(self.private, forKey: "private")
		dictionary.setValue(self.status, forKey: "status")
		dictionary.setValue(self.category-id, forKey: "category-id")
		dictionary.setValue(self.version, forKey: "version")
		dictionary.setValue(self.originalName, forKey: "originalName")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.last-changed-on, forKey: "last-changed-on")
		dictionary.setValue(self.size, forKey: "size")
		dictionary.setValue(self.thumbURL, forKey: "thumbURL")
		dictionary.setValue(self.file-source, forKey: "file-source")
		dictionary.setValue(self.uploaded-by-user-first-name, forKey: "uploaded-by-user-first-name")
		dictionary.setValue(self.category-name, forKey: "category-name")

		return dictionary
	}

}
