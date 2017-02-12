/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class TimeTotalsPerProject: Model {
	public var company : Company?
	public var name : String?
	public var totalNonBillableMins : Int?
	public var totalBillableMins : Int?
	public var id : String?
	public var totalMins : Int?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		if (dictionary["company"] != nil) { company = Company(dictionary: dictionary["company"] as! NSDictionary) }
		name = dictionary["name"] as? String
		totalNonBillableMins = dictionary["totalNonBillableMins"] as? Int
		totalBillableMins = dictionary["totalBillableMins"] as? Int
		id = dictionary["id"] as? String
		totalMins = dictionary["totalMins"] as? Int
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.company?.dictionaryRepresentation(), forKey: "company")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.totalNonBillableMins, forKey: "totalNonBillableMins")
		dictionary.setValue(self.totalBillableMins, forKey: "totalBillableMins")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.totalMins, forKey: "totalMins")

		return dictionary
	}

}
