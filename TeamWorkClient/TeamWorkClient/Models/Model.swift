//
//  Model.swift
//  TeamWorkClient
//
//  Created by  on 18.01.17.
//  Copyright © 2017 . All rights reserved.
//

import Foundation

enum ModelError: Error {
    case arrayNotDeclared
    case dictionaryRepresentationFailed
}
//([.|\s])([a-zA-Z]*)[-]([a-z])
public class Model{
    
    //MARK:- Init
    
    required public init?(dictionary: NSDictionary){
    }
    
    public class func createEmpty<T: Model>() -> T{
        return T.init(dictionary: [:])!
    }
    
    
    //MARK:- Methods
    
    public func dictionaryRepresentation() -> NSDictionary{
        return [String:Any]() as NSDictionary
    }
    
    
    public class func modelsFromDictionaryArray<T: Model>(array:NSArray) -> [T]
    {
        var models:[T] = []
        for item in array
        {
            models.append(self.init(dictionary: item as! NSDictionary)! as! T)
        }
        return models
    }
    
}
