/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Project: Model {
	public var company : Company?
	public var starred : String?
	public var name : String?
	public var showAnnouncement : String?
	public var announcement : String?
	public var description : String?
	public var status : String?
	public var isProjectAdmin : String?
	public var createdOn : String?
	public var category : Category?
	public var startPage : String?
	public var startDate : String?
	public var logo : String?
	public var notifyeveryone : String?
	public var id : String?
	public var lastChangedOn : String?
	public var endDate : Int?
	public var harvestTimersEnabled : Bool?

	required public init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)

		if (dictionary["company"] != nil) { company = Company(dictionary: dictionary["company"] as! NSDictionary) }
		starred = dictionary["starred"] as? String
		name = dictionary["name"] as? String
		showAnnouncement = dictionary["show-announcement"] as? String
		announcement = dictionary["announcement"] as? String
		description = dictionary["description"] as? String
		status = dictionary["status"] as? String
		isProjectAdmin = dictionary["isProjectAdmin"] as? String
		createdOn = dictionary["created-on"] as? String
		if (dictionary["category"] != nil) { category = Category(dictionary: dictionary["category"] as! NSDictionary) }
		startPage = dictionary["start-page"] as? String
		startDate = dictionary["startDate"] as? String
		logo = dictionary["logo"] as? String
		notifyeveryone = dictionary["notifyeveryone"] as? String
		id = unwrapIdValue(dictionary["id"])
		lastChangedOn = dictionary["last-changed-on"] as? String
		endDate = dictionary["endDate"] as? Int
		harvestTimersEnabled = dictionary["harvest-timers-enabled"] as? Bool
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.company?.dictionaryRepresentation(), forKey: "company")
		dictionary.setValue(self.starred, forKey: "starred")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.showAnnouncement, forKey: "show-announcement")
		dictionary.setValue(self.announcement, forKey: "announcement")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.status, forKey: "status")
		dictionary.setValue(self.isProjectAdmin, forKey: "isProjectAdmin")
		dictionary.setValue(self.createdOn, forKey: "created-on")
		dictionary.setValue(self.category?.dictionaryRepresentation(), forKey: "category")
		dictionary.setValue(self.startPage, forKey: "start-page")
		dictionary.setValue(self.startDate, forKey: "startDate")
		dictionary.setValue(self.logo, forKey: "logo")
		dictionary.setValue(self.notifyeveryone, forKey: "notifyeveryone")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.lastChangedOn, forKey: "last-changed-on")
		dictionary.setValue(self.endDate, forKey: "endDate")
		dictionary.setValue(self.harvestTimersEnabled, forKey: "harvest-timers-enabled")

		return dictionary
	}
}
