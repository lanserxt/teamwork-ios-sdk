/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Box: Model {
	public var folderAccess : String?
    public var folderName : String?
	public var enabled : Int?
	public var folderId : String?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
        folderName = dictionary["folder-name"] as? String
		folderAccess = dictionary["folder-access"] as? String
		enabled = dictionary["enabled"] as? Int
		folderId = unwrapIdValue(dictionary["folder-id"])
	}
		
	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

        dictionary.setValue(self.folderName, forKey: "folder-name")
		dictionary.setValue(self.folderAccess, forKey: "folder-access")
		dictionary.setValue(self.enabled, forKey: "enabled")
		dictionary.setValue(self.folderId, forKey: "folder-id")

		return dictionary
	}

}
