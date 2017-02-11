/*
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class CalendarEvent: Model {
	public var whereValue : String?
	public var projectUsersCanEdit : String?
	public var description : String?
	public var attendingUserIds : Int?
	public var notifyUserNames : String?
	public var attendingUserNames : String?
	public var status : String?
	public var owner : Owner?
	public var reminders : Array<Reminder>?
	public var notifyUserIds : String?
	public var start : String?
	public var repeatValue : Repeat?
	public var allDay : String?
	public var id : Int?
	public var end : String?
	public var showAsBusy : String?
	public var lastChangedOn : String?
	public var privacy : Privacy?
	public var attendeesCanEdit : String?
	public var type : Type?
	public var title : String?

    required public init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)


		whereValue = dictionary["where"] as? String
		projectUsersCanEdit = dictionary["project-users-can-edit"] as? String
		description = dictionary["description"] as? String
		attendingUserIds = dictionary["attending-user-ids"] as? Int
		notifyUserNames = dictionary["notify-user-names"] as? String
		attendingUserNames = dictionary["attending-user-names"] as? String
		status = dictionary["status"] as? String
		if (dictionary["owner"] != nil) { owner = Owner(dictionary: dictionary["owner"] as! NSDictionary) }
		if (dictionary["reminders"] != nil) { reminders = Reminder.modelsFromDictionaryArray(array: dictionary["reminders"] as! NSArray) }
		notifyUserIds = dictionary["notify-user-ids"] as? String
		start = dictionary["start"] as? String
		//if (dictionary["repeat"] != nil) { repeatValue = Repeat(dictionary: dictionary["repeat"] as! NSDictionary) }
		allDay = dictionary["all-day"] as? String
		id = dictionary["id"] as? Int
		end = dictionary["end"] as? String
		showAsBusy = dictionary["show-as-busy"] as? String
		lastChangedOn = dictionary["last-changed-on"] as? String
		if (dictionary["privacy"] != nil) { privacy = Privacy(dictionary: dictionary["privacy"] as! NSDictionary) }
		attendeesCanEdit = dictionary["attendees-can-edit"] as? String
		if (dictionary["type"] != nil) { type = Type(dictionary: dictionary["type"] as! NSDictionary) }
		title = dictionary["title"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.whereValue, forKey: "where")
		dictionary.setValue(self.projectUsersCanEdit, forKey: "project-users-can-edit")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.attendingUserIds, forKey: "attending-user-ids")
		dictionary.setValue(self.notifyUserNames, forKey: "notify-user-names")
		dictionary.setValue(self.attendingUserNames, forKey: "attending-user-names")
		dictionary.setValue(self.status, forKey: "status")
		dictionary.setValue(self.owner?.dictionaryRepresentation(), forKey: "owner")
		dictionary.setValue(self.notifyUserIds, forKey: "notify-user-ids")
		dictionary.setValue(self.start, forKey: "start")
		dictionary.setValue(self.repeatValue?.dictionaryRepresentation(), forKey: "repeat")
		dictionary.setValue(self.allDay, forKey: "all-day")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.end, forKey: "end")
		dictionary.setValue(self.showAsBusy, forKey: "show-as-busy")
		dictionary.setValue(self.lastChangedOn, forKey: "last-changed-on")
		dictionary.setValue(self.privacy?.dictionaryRepresentation(), forKey: "privacy")
		dictionary.setValue(self.attendeesCanEdit, forKey: "attendees-can-edit")
		dictionary.setValue(self.type?.dictionaryRepresentation(), forKey: "type")
		dictionary.setValue(self.title, forKey: "title")

		return dictionary
	}

}
