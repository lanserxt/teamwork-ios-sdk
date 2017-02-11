/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class TodoItem: Model {
	public var projectId : Int?
	public var order : Int?
	public var commentsCount : Int?
	public var createdOn : String?
	public var canEdit : String?
	public var hasPredecessors : Int?
	public var id : Int?
	public var completed : String?
	public var position : Int?
	public var estimatedMinutes : Int?
	public var description : String?
	public var progress : Int?
	public var harvestEnabled : String?
	public var responsiblePartyLastname : String?
	public var parentTaskId : Int?
	public var companyId : Int?
	public var creatorAvatarUrl : String?
	public var creatorId : Int?
	public var projectName : String?
	public var startDate : Int?
	public var tasklistPrivate : Int?
	public var lockdownId : String?
	public var canComplete : String?
	public var responsiblePartyId : Int?
	public var creatorLastname : String?
	public var hasReminders : String?
	public var todoListName : String?
	public var hasUnreadComments : String?
	public var dueDateBase : Int?
	public var privateValue : Int?
	public var responsiblePartySummary : String?
	public var status : String?
	public var todoListId : Int?
	public var predecessor : Array<Predecessor>?
	public var parentTask : ParentTask?
	public var content : String?
	public var responsiblePartyType : String?
	public var companyName : String?
	public var creatorFirstname : String?
	public var lastChangedOn : String?
	public var dueDate : Int?
	public var hasDependencies : Int?
	public var attachmentsCount : Int?
	public var priority : String?
	public var responsiblePartyFirstname : String?
	public var viewEstimatedTime : String?
	public var responsiblePartyIds : Int?
	public var responsiblePartyNames : String?
	public var tasklistLockdownId : String?
	public var canLogTime : String?
	public var timeIsLogged : Int?
	public var tags : Array<Tag>?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		projectId = dictionary["project-id"] as? Int
		order = dictionary["order"] as? Int
		commentsCount = dictionary["comments-count"] as? Int
		createdOn = dictionary["created-on"] as? String
		canEdit = dictionary["canEdit"] as? String
		hasPredecessors = dictionary["has-predecessors"] as? Int
		id = dictionary["id"] as? Int
		completed = dictionary["completed"] as? String
		position = dictionary["position"] as? Int
		estimatedMinutes = dictionary["estimated-minutes"] as? Int
		description = dictionary["description"] as? String
		progress = dictionary["progress"] as? Int
		harvestEnabled = dictionary["harvest-enabled"] as? String
		responsiblePartyLastname = dictionary["responsible-party-lastname"] as? String
		parentTaskId = dictionary["parentTaskId"] as? Int
		companyId = dictionary["company-id"] as? Int
		creatorAvatarUrl = dictionary["creator-avatar-url"] as? String
		creatorId = dictionary["creator-id"] as? Int
		projectName = dictionary["project-name"] as? String
		startDate = dictionary["start-date"] as? Int
		tasklistPrivate = dictionary["tasklist-private"] as? Int
		lockdownId = dictionary["lockdownId"] as? String
		canComplete = dictionary["canComplete"] as? String
		responsiblePartyId = dictionary["responsible-party-id"] as? Int
		creatorLastname = dictionary["creator-lastname"] as? String
		hasReminders = dictionary["has-reminders"] as? String
		todoListName = dictionary["todo-list-name"] as? String
		hasUnreadComments = dictionary["has-unread-comments"] as? String
		dueDateBase = dictionary["due-date-base"] as? Int
		privateValue = dictionary["private"] as? Int
		responsiblePartySummary = dictionary["responsible-party-summary"] as? String
		status = dictionary["status"] as? String
		todoListId = dictionary["todo-list-id"] as? Int
        if (dictionary["predecessor"] != nil) { predecessor = Predecessor.modelsFromDictionaryArray(array: dictionary["predecessor"] as! NSArray) }
		if (dictionary["parentTask"] != nil) { parentTask = ParentTask(dictionary: dictionary["parentTask"] as! NSDictionary) }
		content = dictionary["content"] as? String
		responsiblePartyType = dictionary["responsible-party-type"] as? String
		companyName = dictionary["company-name"] as? String
		creatorFirstname = dictionary["creator-firstname"] as? String
		lastChangedOn = dictionary["last-changed-on"] as? String
		dueDate = dictionary["due-date"] as? Int
		hasDependencies = dictionary["has-dependencies"] as? Int
		attachmentsCount = dictionary["attachments-count"] as? Int
		priority = dictionary["priority"] as? String
		responsiblePartyFirstname = dictionary["responsible-party-firstname"] as? String
		viewEstimatedTime = dictionary["viewEstimatedTime"] as? String
		responsiblePartyIds = dictionary["responsible-party-ids"] as? Int
		responsiblePartyNames = dictionary["responsible-party-names"] as? String
		tasklistLockdownId = dictionary["tasklist-lockdownId"] as? String
		canLogTime = dictionary["canLogTime"] as? String
		timeIsLogged = dictionary["timeIsLogged"] as? Int
        if (dictionary["tags"] != nil) { tags = Tag.modelsFromDictionaryArray(array: dictionary["tags"] as! NSArray) }
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.projectId, forKey: "project-id")
		dictionary.setValue(self.order, forKey: "order")
		dictionary.setValue(self.commentsCount, forKey: "comments-count")
		dictionary.setValue(self.createdOn, forKey: "created-on")
		dictionary.setValue(self.canEdit, forKey: "canEdit")
		dictionary.setValue(self.hasPredecessors, forKey: "has-predecessors")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.completed, forKey: "completed")
		dictionary.setValue(self.position, forKey: "position")
		dictionary.setValue(self.estimatedMinutes, forKey: "estimated-minutes")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.progress, forKey: "progress")
		dictionary.setValue(self.harvestEnabled, forKey: "harvest-enabled")
		dictionary.setValue(self.responsiblePartyLastname, forKey: "responsible-party-lastname")
		dictionary.setValue(self.parentTaskId, forKey: "parentTaskId")
		dictionary.setValue(self.companyId, forKey: "company-id")
		dictionary.setValue(self.creatorAvatarUrl, forKey: "creator-avatar-url")
		dictionary.setValue(self.creatorId, forKey: "creator-id")
		dictionary.setValue(self.projectName, forKey: "project-name")
		dictionary.setValue(self.startDate, forKey: "start-date")
		dictionary.setValue(self.tasklistPrivate, forKey: "tasklist-private")
		dictionary.setValue(self.lockdownId, forKey: "lockdownId")
		dictionary.setValue(self.canComplete, forKey: "canComplete")
		dictionary.setValue(self.responsiblePartyId, forKey: "responsible-party-id")
		dictionary.setValue(self.creatorLastname, forKey: "creator-lastname")
		dictionary.setValue(self.hasReminders, forKey: "has-reminders")
		dictionary.setValue(self.todoListName, forKey: "todo-list-name")
		dictionary.setValue(self.hasUnreadComments, forKey: "has-unread-comments")
		dictionary.setValue(self.dueDateBase, forKey: "due-date-base")
		dictionary.setValue(self.privateValue, forKey: "private")
		dictionary.setValue(self.responsiblePartySummary, forKey: "responsible-party-summary")
		dictionary.setValue(self.status, forKey: "status")
		dictionary.setValue(self.todoListId, forKey: "todo-list-id")
		dictionary.setValue(self.parentTask?.dictionaryRepresentation(), forKey: "parentTask")
		dictionary.setValue(self.content, forKey: "content")
		dictionary.setValue(self.responsiblePartyType, forKey: "responsible-party-type")
		dictionary.setValue(self.companyName, forKey: "company-name")
		dictionary.setValue(self.creatorFirstname, forKey: "creator-firstname")
		dictionary.setValue(self.lastChangedOn, forKey: "last-changed-on")
		dictionary.setValue(self.dueDate, forKey: "due-date")
		dictionary.setValue(self.hasDependencies, forKey: "has-dependencies")
		dictionary.setValue(self.attachmentsCount, forKey: "attachments-count")
		dictionary.setValue(self.priority, forKey: "priority")
		dictionary.setValue(self.responsiblePartyFirstname, forKey: "responsible-party-firstname")
		dictionary.setValue(self.viewEstimatedTime, forKey: "viewEstimatedTime")
		dictionary.setValue(self.responsiblePartyIds, forKey: "responsible-party-ids")
		dictionary.setValue(self.responsiblePartyNames, forKey: "responsible-party-names")
		dictionary.setValue(self.tasklistLockdownId, forKey: "tasklist-lockdownId")
		dictionary.setValue(self.canLogTime, forKey: "canLogTime")
		dictionary.setValue(self.timeIsLogged, forKey: "timeIsLogged")

		return dictionary
	}

}
