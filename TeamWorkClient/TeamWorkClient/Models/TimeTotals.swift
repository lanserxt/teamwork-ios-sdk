/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class TimeTotals: Model {
	public var totalMinsSum : Int?
	public var nonBilledMinsSum : Int?
	public var nonBillableHoursSum : Double?
	public var totalHoursSum : Double?
	public var billedMinsSum : Int?
	public var billedHoursSum : Double?
	public var billableHoursSum : Double?
	public var nonBillableMinsSum : Int?
	public var nonBilledHoursSum : Double?
	public var billableMinsSum : Int?

	required public init?(dictionary: NSDictionary) {
        super.init(dictionary: dictionary)
		totalMinsSum = dictionary["total-mins-sum"] as? Int
		nonBilledMinsSum = dictionary["non-billed-mins-sum"] as? Int
		nonBillableHoursSum = dictionary["non-billable-hours-sum"] as? Double
		totalHoursSum = dictionary["total-hours-sum"] as? Double
		billedMinsSum = dictionary["billed-mins-sum"] as? Int
		billedHoursSum = dictionary["billed-hours-sum"] as? Double
		billableHoursSum = dictionary["billable-hours-sum"] as? Double
		nonBillableMinsSum = dictionary["non-billable-mins-sum"] as? Int
		nonBilledHoursSum = dictionary["non-billed-hours-sum"] as? Double
		billableMinsSum = dictionary["billable-mins-sum"] as? Int
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.totalMinsSum, forKey: "total-mins-sum")
		dictionary.setValue(self.nonBilledMinsSum, forKey: "non-billed-mins-sum")
		dictionary.setValue(self.nonBillableHoursSum, forKey: "non-billable-hours-sum")
		dictionary.setValue(self.totalHoursSum, forKey: "total-hours-sum")
		dictionary.setValue(self.billedMinsSum, forKey: "billed-mins-sum")
		dictionary.setValue(self.billedHoursSum, forKey: "billed-hours-sum")
		dictionary.setValue(self.billableHoursSum, forKey: "billable-hours-sum")
		dictionary.setValue(self.nonBillableMinsSum, forKey: "non-billable-mins-sum")
		dictionary.setValue(self.nonBilledHoursSum, forKey: "non-billed-hours-sum")
		dictionary.setValue(self.billableMinsSum, forKey: "billable-mins-sum")

		return dictionary
	}

}
