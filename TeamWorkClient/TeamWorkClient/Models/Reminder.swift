/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Reminder: Model{
	public var createdByUserFirstname : String?
	public var wasSent : Int?
	public var createdDateTime : String?
	public var userLastname : String?
	public var note : String?
	public var userFirstname : String?
	public var dateTimeUtc : String?
	public var createdByUserId : Int?
	public var createdByUserLastname : String?
	public var userId : String?
	public var taskId : String?
	public var id : String?
	public var type : String?

    public required init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)

		createdByUserFirstname = dictionary["created-by-user-firstname"] as? String
		wasSent = dictionary["was-sent"] as? Int
		createdDateTime = dictionary["created-date-time"] as? String
		userLastname = dictionary["user-lastname"] as? String
		note = dictionary["note"] as? String
		userFirstname = dictionary["user-firstname"] as? String
		dateTimeUtc = dictionary["date-time-utc"] as? String
		createdByUserId = dictionary["created-by-user-id"] as? Int
		createdByUserLastname = dictionary["created-by-user-lastname"] as? String
		userId = dictionary["user-id"] as? String
		taskId = dictionary["task-id"] as? String
		id = dictionary["id"] as? String
		type = dictionary["type"] as? String
	}

	override public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.createdByUserFirstname, forKey: "created-by-user-firstname")
		dictionary.setValue(self.wasSent, forKey: "was-sent")
		dictionary.setValue(self.createdDateTime, forKey: "created-date-time")
		dictionary.setValue(self.userLastname, forKey: "user-lastname")
		dictionary.setValue(self.note, forKey: "note")
		dictionary.setValue(self.userFirstname, forKey: "user-firstname")
		dictionary.setValue(self.dateTimeUtc, forKey: "date-time-utc")
		dictionary.setValue(self.createdByUserId, forKey: "created-by-user-id")
		dictionary.setValue(self.createdByUserLastname, forKey: "created-by-user-lastname")
		dictionary.setValue(self.userId, forKey: "user-id")
		dictionary.setValue(self.taskId, forKey: "task-id")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.type, forKey: "type")

		return dictionary
	}

}
