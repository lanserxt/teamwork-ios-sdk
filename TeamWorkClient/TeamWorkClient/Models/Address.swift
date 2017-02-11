/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Address: Model {
	public var zipcode : String?
	public var countrycode : String?
	public var state : String?
	public var line1 : String?
	public var country : String?
	public var line2 : String?
	public var city : String?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		zipcode = dictionary["zipcode"] as? String
		countrycode = dictionary["countrycode"] as? String
		state = dictionary["state"] as? String
		line1 = dictionary["line1"] as? String
		country = dictionary["country"] as? String
		line2 = dictionary["line2"] as? String
		city = dictionary["city"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.zipcode, forKey: "zipcode")
		dictionary.setValue(self.countrycode, forKey: "countrycode")
		dictionary.setValue(self.state, forKey: "state")
		dictionary.setValue(self.line1, forKey: "line1")
		dictionary.setValue(self.country, forKey: "country")
		dictionary.setValue(self.line2, forKey: "line2")
		dictionary.setValue(self.city, forKey: "city")

		return dictionary
	}

}
