/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Dependent: Model {
	public var responsiblePartyId : String?
	public var predecessorMust : String?
	public var name : String?
	public var id : String?
	public var hardness : String?
	public var projectId : String?
	public var dependentCant : String?
	public var responsiblePartySummary : String?
	public var responsiblePartyNames : String?

	required public init?(dictionary: NSDictionary) {

        super.init(dictionary: dictionary)
		responsiblePartyId = dictionary["responsible-party-id"] as? String
		predecessorMust = dictionary["predecessorMust"] as? String
		name = dictionary["name"] as? String
		id = dictionary["id"] as? String
		hardness = dictionary["hardness"] as? String
		projectId = dictionary["projectId"] as? String
		dependentCant = dictionary["dependentCant"] as? String
		responsiblePartySummary = dictionary["responsible-party-summary"] as? String
		responsiblePartyNames = dictionary["responsible-party-names"] as? String
	}

	public override func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.responsiblePartyId, forKey: "responsible-party-id")
		dictionary.setValue(self.predecessorMust, forKey: "predecessorMust")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.hardness, forKey: "hardness")
		dictionary.setValue(self.projectId, forKey: "projectId")
		dictionary.setValue(self.dependentCant, forKey: "dependentCant")
		dictionary.setValue(self.responsiblePartySummary, forKey: "responsible-party-summary")
		dictionary.setValue(self.responsiblePartyNames, forKey: "responsible-party-names")

		return dictionary
	}

}
