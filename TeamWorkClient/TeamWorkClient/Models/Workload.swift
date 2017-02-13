/*
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Workload: Model {
	public var numberOfUsers : Int?
	public var totalLoggedTime : Int?
	public var totalMarkedComplete : Int?
	public var companyName : String?
	public var userCompanyId : String?
	public var userLastName : String?
	public var projectName : String?
	public var numberOfProjects : Int?
	public var projectId : String?
	public var userCompanyName : String?
	public var percentageLoggedTime : Int?
	public var totalStillActive : Int?
	public var numberOfCompletedTasks : Int?
	public var avatarUrl : String?
	public var userFirstName : String?
	public var percentageStillActive : Int?
	public var numberOfActiveTasks : Int?
	public var totalEstimatedTime : Int?
	public var percentageMarkedComplete : Int?
	public var numberOfTasks : Int?
	public var companyId : String?
	public var userId : String?
    
	public required init?(dictionary: NSDictionary) {
        
		super.init(dictionary: dictionary)
        
		numberOfUsers = dictionary["numberOfUsers"] as? Int
		totalLoggedTime = dictionary["totalLoggedTime"] as? Int
		totalMarkedComplete = dictionary["totalMarkedComplete"] as? Int
		companyName = dictionary["companyName"] as? String
		userCompanyId = unwrapIdValue(dictionary["userCompanyId"])
		userLastName = dictionary["userLastName"] as? String
		projectName = dictionary["projectName"] as? String
		numberOfProjects = dictionary["numberOfProjects"] as? Int
		projectId = dictionary["projectId"] as? String
		userCompanyName = dictionary["userCompanyName"] as? String
		percentageLoggedTime = dictionary["percentageLoggedTime"] as? Int
		totalStillActive = dictionary["totalStillActive"] as? Int
		numberOfCompletedTasks = dictionary["numberOfCompletedTasks"] as? Int
		avatarUrl = dictionary["avatar-url"] as? String
		userFirstName = dictionary["userFirstName"] as? String
		percentageStillActive = dictionary["percentageStillActive"] as? Int
		numberOfActiveTasks = dictionary["numberOfActiveTasks"] as? Int
		totalEstimatedTime = dictionary["totalEstimatedTime"] as? Int
		percentageMarkedComplete = dictionary["percentageMarkedComplete"] as? Int
		numberOfTasks = dictionary["numberOfTasks"] as? Int
		companyId = unwrapIdValue(dictionary["companyId"])
		userId = unwrapIdValue(dictionary["userId"])
	}

	override public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.numberOfUsers, forKey: "numberOfUsers")
		dictionary.setValue(self.totalLoggedTime, forKey: "totalLoggedTime")
		dictionary.setValue(self.totalMarkedComplete, forKey: "totalMarkedComplete")
		dictionary.setValue(self.companyName, forKey: "companyName")
		dictionary.setValue(self.userCompanyId, forKey: "userCompanyId")
		dictionary.setValue(self.userLastName, forKey: "userLastName")
		dictionary.setValue(self.projectName, forKey: "projectName")
		dictionary.setValue(self.numberOfProjects, forKey: "numberOfProjects")
		dictionary.setValue(self.projectId, forKey: "projectId")
		dictionary.setValue(self.userCompanyName, forKey: "userCompanyName")
		dictionary.setValue(self.percentageLoggedTime, forKey: "percentageLoggedTime")
		dictionary.setValue(self.totalStillActive, forKey: "totalStillActive")
		dictionary.setValue(self.numberOfCompletedTasks, forKey: "numberOfCompletedTasks")
		dictionary.setValue(self.avatarUrl, forKey: "avatar-url")
		dictionary.setValue(self.userFirstName, forKey: "userFirstName")
		dictionary.setValue(self.percentageStillActive, forKey: "percentageStillActive")
		dictionary.setValue(self.numberOfActiveTasks, forKey: "numberOfActiveTasks")
		dictionary.setValue(self.totalEstimatedTime, forKey: "totalEstimatedTime")
		dictionary.setValue(self.percentageMarkedComplete, forKey: "percentageMarkedComplete")
		dictionary.setValue(self.numberOfTasks, forKey: "numberOfTasks")
		dictionary.setValue(self.companyId, forKey: "companyId")
		dictionary.setValue(self.userId, forKey: "userId")

		return dictionary
	}

}
