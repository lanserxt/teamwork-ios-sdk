//
//  TWApiClient+Account.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 01.02.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import Foundation
import Alamofire

extension TWApiClient{
    
    func getAccount(_ responseBlock: @escaping (Bool, Int, Account?, Error?) -> Void){
        Alamofire.request(self.kSiteUrl + TWApiClientConstants.APIPath.getAccount.path)
            .validate(statusCode: 200..<300)
            .validate(contentType: [self.kContentType])
            .authenticate(user: self.kApiToken, password: self.kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let accountContainer = ResponseContainer<Account>.init(rootObjectName: TWApiClientConstants.APIPath.getAccount.rootElement, dictionary: JSON){
                            if (accountContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, accountContainer.rootObject, nil)
                            } else {
                                responseBlock (false, 0, nil, TWApiClientErrors.ResponseStatusNotOK)
                            }
                        } else
                        {
                            responseBlock (false, 0, nil, TWApiClientErrors.ResponseValidationError)
                        }
                    }
                case .failure(let error):
                    print(error)
                    responseBlock(false, (response.response?.statusCode)!, nil, error)
                }
        }
    }
    
    func getAuthenticate(_ responseBlock: @escaping (Bool, Int, AuthAccount?, Error?) -> Void){
        Alamofire.request(self.kSiteUrl + TWApiClientConstants.APIPath.getAuthenticate.path)
            .validate(statusCode: 200..<300)
            .validate(contentType: [self.kContentType])
            .authenticate(user: self.kApiToken, password: self.kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let accountContainer = ResponseContainer<AuthAccount>.init(rootObjectName: TWApiClientConstants.APIPath.getAuthenticate.rootElement, dictionary: JSON){
                            if (accountContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, accountContainer.rootObject, nil)
                                print("\(accountContainer.rootObject)")
                            } else {
                                responseBlock (false, 0, nil, TWApiClientErrors.ResponseStatusNotOK)
                                
                            }
                        }
                        else
                        {
                            responseBlock (false, 0, nil, TWApiClientErrors.ResponseValidationError)
                        }
                    }
                case .failure(let error):
                    print(error)
                    responseBlock(false, (response.response?.statusCode)!, nil, error)
                }
        }
    }

    
}
