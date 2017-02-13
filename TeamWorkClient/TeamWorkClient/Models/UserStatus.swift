/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class UserStatus: Model {
	public var geoipLocation : String?
	public var postedOn : String?
	public var firstName : String?
	public var avatarUrl : String?
	public var id : String?
	public var lastChangedOn : String?
	public var status : String?
	public var lastName : String?
	public var userId : String?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		geoipLocation = dictionary["geoipLocation"] as? String
		postedOn = dictionary["posted-on"] as? String
		firstName = dictionary["first-name"] as? String
		avatarUrl = dictionary["avatar-url"] as? String
		id = unwrapIdValue(dictionary["id"])
		lastChangedOn = dictionary["last-changed-on"] as? String
		status = dictionary["status"] as? String
		lastName = dictionary["last-name"] as? String
		userId = unwrapIdValue(dictionary["userId"])
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.geoipLocation, forKey: "geoipLocation")
		dictionary.setValue(self.postedOn, forKey: "posted-on")
		dictionary.setValue(self.firstName, forKey: "first-name")
		dictionary.setValue(self.avatarUrl, forKey: "avatar-url")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.lastChangedOn, forKey: "last-changed-on")
		dictionary.setValue(self.status, forKey: "status")
		dictionary.setValue(self.lastName, forKey: "last-name")
		dictionary.setValue(self.userId, forKey: "userId")

		return dictionary
	}

}
