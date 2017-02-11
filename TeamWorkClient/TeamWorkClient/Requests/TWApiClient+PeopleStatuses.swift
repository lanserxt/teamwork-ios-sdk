//
//  TWApiClient+Invoices.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 02.02.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import Foundation
import Alamofire

extension TWApiClient{
    func createStatus(userStatus: UserStatus, _ responseBlock: @escaping (Bool, Int, String?, Error?) -> Void){
        
        let parameters: [String : Any] = ["userstatus" : userStatus.dictionaryRepresentation() as! [String: Any]]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.createStatus.path), method: HTTPMethod.post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<UserStatus>.init(rootObjectName: TWApiClientConstants.APIPath.createStatus.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, JSON.object(forKey: "id") as! String?, nil)
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
    
    func createStatusForPerson(personId: String, userStatus: UserStatus, _ responseBlock: @escaping (Bool, Int, String?, Error?) -> Void){
        
        let parameters: [String : Any] = ["userstatus" : userStatus.dictionaryRepresentation() as! [String: Any]]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.createStatusForPerson.path, personId), method: HTTPMethod.post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<UserStatus>.init(rootObjectName: TWApiClientConstants.APIPath.createStatusForPerson.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, JSON.object(forKey: "id") as! String?, nil)
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
    
    func updateStatus(statusId: String, userStatus: UserStatus, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        let parameters: [String : Any] = ["userstatus" : userStatus.dictionaryRepresentation() as! [String: Any]]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.updateStatus.path, statusId), method: HTTPMethod.put, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<UserStatus>.init(rootObjectName: TWApiClientConstants.APIPath.updateStatus.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200,  nil)
                            } else {
                                responseBlock (false, 0, TWApiClientErrors.ResponseStatusNotOK)
                            }
                        }
                        else
                        {
                            responseBlock (false, 0, TWApiClientErrors.ResponseValidationError)
                        }
                    }
                case .failure(let error):
                    print(error)
                    responseBlock(false, (response.response?.statusCode)!, error)
                }
        }
    }
    
    func updatePeopleStatus(statusId: String, userStatus: UserStatus, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        let parameters: [String : Any] = ["userstatus" : userStatus.dictionaryRepresentation() as! [String: Any]]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.updatePeopleStatus.path, statusId), method: HTTPMethod.put, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<UserStatus>.init(rootObjectName: TWApiClientConstants.APIPath.updatePeopleStatus.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200,  nil)
                            } else {
                                responseBlock (false, 0, TWApiClientErrors.ResponseStatusNotOK)
                            }
                        }
                        else
                        {
                            responseBlock (false, 0, TWApiClientErrors.ResponseValidationError)
                        }
                    }
                case .failure(let error):
                    print(error)
                    responseBlock(false, (response.response?.statusCode)!, error)
                }
        }
    }
    
    func updateStatusForPeople(personId: String, statusId: String, userStatus: UserStatus, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        let parameters: [String : Any] = ["userstatus" : userStatus.dictionaryRepresentation() as! [String: Any]]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.editUser.path, personId, statusId), method: HTTPMethod.put, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<UserStatus>.init(rootObjectName: TWApiClientConstants.APIPath.editUser.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200,  nil)
                            } else {
                                responseBlock (false, 0, TWApiClientErrors.ResponseStatusNotOK)
                            }
                        }
                        else
                        {
                            responseBlock (false, 0, TWApiClientErrors.ResponseValidationError)
                        }
                    }
                case .failure(let error):
                    print(error)
                    responseBlock(false, (response.response?.statusCode)!, error)
                }
        }
    }
    
    func deleteStatus(statusId: String, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.deleteStatus.path, statusId), method: HTTPMethod.delete, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<UserStatus>.init(rootObjectName: TWApiClientConstants.APIPath.deleteStatus.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, nil)
                            } else {
                                responseBlock (false, 0, TWApiClientErrors.ResponseStatusNotOK)
                            }
                        }
                        else
                        {
                            responseBlock (false, 0, TWApiClientErrors.ResponseValidationError)
                        }
                    }
                case .failure(let error):
                    print(error)
                    responseBlock(false, (response.response?.statusCode)!, error)
                }
        }
    }
    
    func deletePeopleStatus(statusId: String, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.deletePeopleStatus.path, statusId), method: HTTPMethod.delete, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<UserStatus>.init(rootObjectName: TWApiClientConstants.APIPath.deletePeopleStatus.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, nil)
                            } else {
                                responseBlock (false, 0, TWApiClientErrors.ResponseStatusNotOK)
                            }
                        }
                        else
                        {
                            responseBlock (false, 0, TWApiClientErrors.ResponseValidationError)
                        }
                    }
                case .failure(let error):
                    print(error)
                    responseBlock(false, (response.response?.statusCode)!, error)
                }
        }
    }
    
    func deleteStatusForPeople(personId: String, statusId: String, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.deleteStatusForPeople.path, personId, statusId), method: HTTPMethod.delete, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<UserStatus>.init(rootObjectName: TWApiClientConstants.APIPath.deleteStatusForPeople.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, nil)
                            } else {
                                responseBlock (false, 0, TWApiClientErrors.ResponseStatusNotOK)
                            }
                        }
                        else
                        {
                            responseBlock (false, 0, TWApiClientErrors.ResponseValidationError)
                        }
                    }
                case .failure(let error):
                    print(error)
                    responseBlock(false, (response.response?.statusCode)!, error)
                }
        }
    }
    
    func getCurrentUserStatus(_ responseBlock: @escaping (Bool, Int, [UserStatus]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getCurrentUserStatus.path), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<UserStatus>.init(rootObjectName: TWApiClientConstants.APIPath.getCurrentUserStatus.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, responseContainer.rootObjects, nil)
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
    
    func getPeopleStatus(peopleId: String, _ responseBlock: @escaping (Bool, Int, [UserStatus]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getPeopleStatus.path, peopleId), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<UserStatus>.init(rootObjectName: TWApiClientConstants.APIPath.getPeopleStatus.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, responseContainer.rootObjects, nil)
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
    
    func getAllStatuses(_ responseBlock: @escaping (Bool, Int, [UserStatus]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getAllStatuses.path), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<UserStatus>.init(rootObjectName: TWApiClientConstants.APIPath.getAllStatuses.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, responseContainer.rootObjects, nil)
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
