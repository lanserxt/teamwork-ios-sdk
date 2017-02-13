/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Task: Model {
	public var taskListId : String?
	public var name : String?
	public var companyName : String?
	public var projectName : String?
	public var projectId : String?
	public var taskEstimateMinutes : Int?
	public var taskDisplayOrder : Int?
	public var taskParentTaskId : String?
	public var lastUpdated : String?
	public var tags : Array<Tag>?
	public var taskProgress : Int?
	public var id : String?
	public var completed : String?
	public var taskListName : String?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		taskListId = unwrapIdValue(dictionary["taskListId"])
		name = dictionary["name"] as? String
		companyName = dictionary["companyName"] as? String
		projectName = dictionary["projectName"] as? String
		projectId = unwrapIdValue(dictionary["projectId"])
		taskEstimateMinutes = dictionary["taskEstimateMinutes"] as? Int
		taskDisplayOrder = dictionary["taskDisplayOrder"] as? Int
		taskParentTaskId = unwrapIdValue(dictionary["taskParentTaskId"])
		lastUpdated = dictionary["lastUpdated"] as? String
        if (dictionary["tags"] != nil) { tags = Tag.modelsFromDictionaryArray(array: dictionary["tags"] as! NSArray) }
		taskProgress = dictionary["taskProgress"] as? Int
		id = unwrapIdValue(dictionary["id"])
		completed = dictionary["completed"] as? String
		taskListName = dictionary["taskListName"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.taskListId, forKey: "taskListId")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.companyName, forKey: "companyName")
		dictionary.setValue(self.projectName, forKey: "projectName")
		dictionary.setValue(self.projectId, forKey: "projectId")
		dictionary.setValue(self.taskEstimateMinutes, forKey: "taskEstimateMinutes")
		dictionary.setValue(self.taskDisplayOrder, forKey: "taskDisplayOrder")
		dictionary.setValue(self.taskParentTaskId, forKey: "taskParentTaskId")
		dictionary.setValue(self.lastUpdated, forKey: "lastUpdated")
		dictionary.setValue(self.taskProgress, forKey: "taskProgress")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.completed, forKey: "completed")
		dictionary.setValue(self.taskListName, forKey: "taskListName")

		return dictionary
	}

}
