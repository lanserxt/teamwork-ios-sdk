//
//  TWApiClient+Activity.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 01.02.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import Foundation
import Alamofire

extension TWApiClient{
    
    func getLatestActivity(maxItems: Int = 60, onlyStarred: Bool = false, _ responseBlock: @escaping (Bool, Int, [Activity]?, Error?) -> Void){
        
        if (maxItems < 0 || maxItems > 200){
            responseBlock (false, 0, nil, TWApiClientErrors.InvalidNumericParameter)
        }
        
        let parameters = ["maxItems" : String(maxItems), "onlyStarred" : wrapBoolValue(onlyStarred)]
        
        Alamofire.request(kSiteUrl + TWApiClientConstants.APIPath.getLatestActivity.path, method: HTTPMethod.get, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<Activity>.init(rootObjectName: TWApiClientConstants.APIPath.getLatestActivity.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, responseContainer.rootObjects, nil)
                                print("\(responseContainer.rootObjects)")
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
    
    func getLatestActivityForProject(projectId:String, maxItems:Int = 60, _ responseBlock: @escaping (Bool, Int, [Activity]?, Error?) -> Void){
        
        if (maxItems < 0 || maxItems > 200){
            responseBlock (false, 0, nil, TWApiClientErrors.InvalidNumericParameter)
        }
        
        let parameters = ["maxItems" : String(maxItems)]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getLatestActivityForProject.path, projectId), method: HTTPMethod.get, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<Activity>.init(rootObjectName: TWApiClientConstants.APIPath.getLatestActivityForProject.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, responseContainer.rootObjects, nil)
                                print("\(responseContainer.rootObjects)")
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
    
    func deleteLatestActivityForProjecy(projectId:String, maxItems:Int = 60, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        if (maxItems < 0 || maxItems > 200){
            responseBlock (false, 0, TWApiClientErrors.InvalidNumericParameter)
        }
        
        let parameters = ["maxItems" : String(maxItems)]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.deleteLatestActivityForProject.path, projectId), method: HTTPMethod.delete, parameters: parameters, encoding: URLEncoding.default, headers: nil).validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    responseBlock (true, 200, nil)
                case .failure(let error):
                    print(error)
                    responseBlock(false, (response.response?.statusCode)!, error)
                }
        }
    }

    
}
