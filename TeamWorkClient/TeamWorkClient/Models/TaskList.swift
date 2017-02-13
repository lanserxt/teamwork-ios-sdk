/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class TaskList: Model {
	public var projectid : String?
	public var name : String?
	public var description : String?
	public var milestoneId : String?
	public var uncompletedCount : Int?
	public var complete : String?
	public var privateValue : Int?
	public var overdueCount : Int?
	public var projectName : String?
	public var pinned : String?
	public var id : String?
	public var position : Int?
	public var completedCount : Int?
	public var milestone : Milestone?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		projectid = unwrapIdValue(dictionary["projectid"])
		name = dictionary["name"] as? String
		description = dictionary["description"] as? String
		milestoneId = unwrapIdValue(dictionary["milestone-id"])
		uncompletedCount = dictionary["uncompleted-count"] as? Int
		complete = dictionary["complete"] as? String
		privateValue = dictionary["private"] as? Int
		overdueCount = dictionary["overdue-count"] as? Int
		projectName = dictionary["project-name"] as? String
		pinned = dictionary["pinned"] as? String
		id = unwrapIdValue(dictionary["id"])
		position = dictionary["position"] as? Int
		completedCount = dictionary["completed-count"] as? Int
		if (dictionary["milestone"] != nil) { milestone = Milestone(dictionary: dictionary["milestone"] as! NSDictionary) }
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.projectid, forKey: "projectid")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.milestoneId, forKey: "milestone-id")
		dictionary.setValue(self.uncompletedCount, forKey: "uncompleted-count")
		dictionary.setValue(self.complete, forKey: "complete")
		dictionary.setValue(self.privateValue, forKey: "private")
		dictionary.setValue(self.overdueCount, forKey: "overdue-count")
		dictionary.setValue(self.projectName, forKey: "project-name")
		dictionary.setValue(self.pinned, forKey: "pinned")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.position, forKey: "position")
		dictionary.setValue(self.completedCount, forKey: "completed-count")
		dictionary.setValue(self.milestone?.dictionaryRepresentation(), forKey: "milestone")

		return dictionary
	}

}
