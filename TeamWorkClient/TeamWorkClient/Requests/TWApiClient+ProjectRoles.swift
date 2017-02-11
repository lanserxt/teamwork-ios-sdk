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
    
    func getAllRolesForProject(projectId: String, _ responseBlock: @escaping (Bool, Int, [Project]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getAllRolesForProject.path, projectId), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<Project>.init(rootObjectName: TWApiClientConstants.APIPath.getAllRolesForProject.rootElement, dictionary: JSON){
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
    
    func addRoleToProject(projectId: String, role: Role,  _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        let parameters: [String : Any] = ["role" : role]
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.addRoleToProject.path, projectId), method: HTTPMethod.post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Box>.init(rootObjectName: TWApiClientConstants.APIPath.addRoleToProject.rootElement, dictionary: JSON){
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
    
    func updateRoleOnProject(roleId: String, role: Role,  _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        let parameters: [String : Any] = ["role" : role]
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.updateRoleOnProject.path, roleId), method: HTTPMethod.put, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Role>.init(rootObjectName: TWApiClientConstants.APIPath.updateRoleOnProject.rootElement, dictionary: JSON){
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
    
    func deleteRole(roleId: String, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.deleteRole.path, roleId), method: HTTPMethod.delete, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Project>.init(rootObjectName: TWApiClientConstants.APIPath.deleteRole.rootElement, dictionary: JSON){
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
    
    
    func getRole(roleId: String,  _ responseBlock: @escaping (Bool, Int, Role?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getRole.path, roleId), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Role>.init(rootObjectName: TWApiClientConstants.APIPath.getRole.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, responseContainer.rootObject, nil)
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
