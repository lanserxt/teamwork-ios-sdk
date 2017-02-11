/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class TimeEstimates: Model {
	public var totalHoursEstimated : Double?
	public var activeMinsEstimated : Int?
	public var totalMinsEstimated : Int?
	public var activeHoursEstimated : Double?
	public var completedHoursEstimated : Double?
	public var completedMinsEstimated : Int?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		totalHoursEstimated = dictionary["total-hours-estimated"] as? Double
		activeMinsEstimated = dictionary["active-mins-estimated"] as? Int
		totalMinsEstimated = dictionary["total-mins-estimated"] as? Int
		activeHoursEstimated = dictionary["active-hours-estimated"] as? Double
		completedHoursEstimated = dictionary["completed-hours-estimated"] as? Double
		completedMinsEstimated = dictionary["completed-mins-estimated"] as? Int
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.totalHoursEstimated, forKey: "total-hours-estimated")
		dictionary.setValue(self.activeMinsEstimated, forKey: "active-mins-estimated")
		dictionary.setValue(self.totalMinsEstimated, forKey: "total-mins-estimated")
		dictionary.setValue(self.activeHoursEstimated, forKey: "active-hours-estimated")
		dictionary.setValue(self.completedHoursEstimated, forKey: "completed-hours-estimated")
		dictionary.setValue(self.completedMinsEstimated, forKey: "completed-mins-estimated")

		return dictionary
	}

}
