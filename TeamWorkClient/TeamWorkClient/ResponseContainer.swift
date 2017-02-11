//
//  ResponseContainer.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 14.01.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import Foundation

public enum TWApiStatusCode: String {
    case OK = "OK"
    case Undefined = "Other"
}


public class ResponseContainer<T: Model>{
    
    //MARK:- Variables
    
	public var status : TWApiStatusCode?
    public var rootObject: T {
        return self.object as! T
    }
    
    private var object : Model?
    private var rootObjectName : String
    
    //MARK:- Init
    
    required public init?(rootObjectName: String, dictionary: NSDictionary) {
		self.rootObjectName = rootObjectName
        status = dictionary[TWApiClientConstants.kStatus] as? String == TWApiStatusCode.OK.rawValue ? .OK : .Undefined
		if (dictionary[self.rootObjectName] != nil){
            object = T(dictionary: dictionary[self.rootObjectName] as! NSDictionary)
        }
	}
    
    //MARK:- Methods
    
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.status, forKey: TWApiClientConstants.kStatus)
        dictionary.setValue(self.object?.dictionaryRepresentation(), forKey: self.rootObjectName)
		return dictionary
	}
}
