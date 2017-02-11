//
//  MultipleResponseContainer.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 01.02.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import Foundation

public class MultipleResponseContainer<T: Model>{
    
    //MARK:- Variables
    
    public var status : TWApiStatusCode?
    public var rootObjects: [T]? {
        return self.object as! [T]?
    }
    
    private var object : [Model]?
    private var rootObjectName : String
    
    //MARK:- Init
    
    required public init?(rootObjectName: String, dictionary: NSDictionary) {
        self.rootObjectName = rootObjectName
        status = dictionary[TWApiClientConstants.kStatus] as? String == TWApiStatusCode.OK.rawValue ? .OK : .Undefined
        
        if (dictionary[self.rootObjectName] != nil){
            object = T.modelsFromDictionaryArray(array: (dictionary: dictionary[self.rootObjectName] as! NSArray))
        }
    }
    
    //MARK:- Methods
    
    public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.status, forKey: TWApiClientConstants.kStatus)
        var objectArr = [T]()
        for item:Model in self.object! {
            objectArr.append(item.dictionaryRepresentation() as! T)
        }
        dictionary.setValue(objectArr, forKey: self.rootObjectName)
        return dictionary
    }
}
