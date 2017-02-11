/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Milestone: Model {
	public var projectId : Int?
	public var canComplete : String?
	public var responsiblePartyId : Int?
	public var completerId : Int?
	public var commentsCount : Int?
	public var privateValue : String?
	public var status : String?
	public var completedOn : String?
	public var createdOn : String?
	public var canEdit : String?
	public var responsiblePartyType : String?
	public var isprivate : String?
	public var companyName : String?
	public var id : Int?
	public var lastChangedOn : String?
	public var completed : String?
	public var reminder : String?
	public var tasklists : Array<String>?
	public var description : String?
	public var responsiblePartyFirstname : String?
	public var completerFirstname : String?
	public var responsiblePartyIds : Int?
	public var responsiblePartyNames : String?
	public var responsiblePartyLastname : String?
	public var companyId : Int?
	public var creatorId : Int?
	public var completerLastname : String?
	public var projectName : String?
	public var deadline : Int?
	public var title : String?

	required public init?(dictionary: NSDictionary) {
        
        super.init(dictionary: dictionary)

		projectId = dictionary["project-id"] as? Int
		canComplete = dictionary["canComplete"] as? String
		responsiblePartyId = dictionary["responsible-party-id"] as? Int
		completerId = dictionary["completer-id"] as? Int
		commentsCount = dictionary["comments-count"] as? Int
		privateValue = dictionary["private"] as? String
		status = dictionary["status"] as? String
		completedOn = dictionary["completed-on"] as? String
		createdOn = dictionary["created-on"] as? String
		canEdit = dictionary["canEdit"] as? String
		responsiblePartyType = dictionary["responsible-party-type"] as? String
		isprivate = dictionary["isprivate"] as? String
		companyName = dictionary["company-name"] as? String
		id = dictionary["id"] as? Int
		lastChangedOn = dictionary["last-changed-on"] as? String
		completed = dictionary["completed"] as? String
		reminder = dictionary["reminder"] as? String
        tasklists = dictionary["tasklists"] as? Array<String>
		description = dictionary["description"] as? String
		responsiblePartyFirstname = dictionary["responsible-party-firstname"] as? String
		completerFirstname = dictionary["completer-firstname"] as? String
		responsiblePartyIds = dictionary["responsible-party-ids"] as? Int
		responsiblePartyNames = dictionary["responsible-party-names"] as? String
		responsiblePartyLastname = dictionary["responsible-party-lastname"] as? String
		companyId = dictionary["company-id"] as? Int
		creatorId = dictionary["creator-id"] as? Int
		completerLastname = dictionary["completer-lastname"] as? String
		projectName = dictionary["project-name"] as? String
		deadline = dictionary["deadline"] as? Int
		title = dictionary["title"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.projectId, forKey: "project-id")
		dictionary.setValue(self.canComplete, forKey: "canComplete")
		dictionary.setValue(self.responsiblePartyId, forKey: "responsible-party-id")
		dictionary.setValue(self.completerId, forKey: "completer-id")
		dictionary.setValue(self.commentsCount, forKey: "comments-count")
		dictionary.setValue(self.privateValue, forKey: "private")
		dictionary.setValue(self.status, forKey: "status")
		dictionary.setValue(self.completedOn, forKey: "completed-on")
		dictionary.setValue(self.createdOn, forKey: "created-on")
		dictionary.setValue(self.canEdit, forKey: "canEdit")
		dictionary.setValue(self.responsiblePartyType, forKey: "responsible-party-type")
		dictionary.setValue(self.isprivate, forKey: "isprivate")
		dictionary.setValue(self.companyName, forKey: "company-name")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.lastChangedOn, forKey: "last-changed-on")
		dictionary.setValue(self.completed, forKey: "completed")
		dictionary.setValue(self.reminder, forKey: "reminder")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.responsiblePartyFirstname, forKey: "responsible-party-firstname")
		dictionary.setValue(self.completerFirstname, forKey: "completer-firstname")
		dictionary.setValue(self.responsiblePartyIds, forKey: "responsible-party-ids")
		dictionary.setValue(self.responsiblePartyNames, forKey: "responsible-party-names")
		dictionary.setValue(self.responsiblePartyLastname, forKey: "responsible-party-lastname")
		dictionary.setValue(self.companyId, forKey: "company-id")
		dictionary.setValue(self.creatorId, forKey: "creator-id")
		dictionary.setValue(self.completerLastname, forKey: "completer-lastname")
		dictionary.setValue(self.projectName, forKey: "project-name")
		dictionary.setValue(self.deadline, forKey: "deadline")
		dictionary.setValue(self.title, forKey: "title")

		return dictionary
	}

}
