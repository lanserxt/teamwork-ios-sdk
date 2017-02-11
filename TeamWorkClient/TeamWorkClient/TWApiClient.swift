//
//  TWApiClient.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 14.01.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import Foundation
import Alamofire

enum TWApiClientErrors:Error {
    case InvalidNumericParameter
    case ResponseValidationError
    case ResponseStatusNotOK
}

class TWApiClient
{
    //MARK:- Variables
    
    private(set) public var kSiteUrl:String = ""
    private(set) public var kApiToken:String = ""
    public let kContentType = "application/json"
    public let kAuthPass = "xxx"
    
    //MARK:- Init
    
    init(url:String, token:String){
        self.kSiteUrl = url
        self.kApiToken = token
    }
    
    //MARK:- Methods
    
    func wrapBoolValue(_ value: Bool) -> String{
        return value ? "true" : "false"
    }

}
