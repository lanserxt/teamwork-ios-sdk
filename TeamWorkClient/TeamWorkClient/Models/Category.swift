/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Category: Model {
	public var projectId : String?
	public var parentId : String?
	public var name : String?
	public var count : Int?
	public var id : String?
	public var elementsCount : Int?
	public var type : String?


	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		projectId = dictionary["project-id"] as? String
		parentId = dictionary["parent-id"] as? String
		name = dictionary["name"] as? String
		count = dictionary["count"] as? Int
		id = dictionary["id"] as? String
		elementsCount = dictionary["elements_count"] as? Int
		type = dictionary["type"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.projectId, forKey: "project-id")
		dictionary.setValue(self.parentId, forKey: "parent-id")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.count, forKey: "count")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.elementsCount, forKey: "elements_count")
		dictionary.setValue(self.type, forKey: "type")

		return dictionary
	}

}
