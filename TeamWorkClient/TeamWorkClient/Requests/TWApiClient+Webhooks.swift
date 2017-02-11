//
//  TWApiClient+Webhooks.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 01.02.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import Foundation
import Alamofire

extension TWApiClient{
    
    func getAllWebhookEvents(_ responseBlock: @escaping (Bool, Int, [Event]?, Error?) -> Void){
        Alamofire.request(self.kSiteUrl + TWApiClientConstants.APIPath.getAllWebhookEvents.path)
            .validate(statusCode: 200..<300)
            .validate(contentType: [self.kContentType])
            .authenticate(user: self.kApiToken, password: self.kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<Event>.init(rootObjectName: TWApiClientConstants.APIPath.getAllWebhookEvents.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, responseContainer.rootObjects, nil)
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
    
    func getAllWebhooks(_ responseBlock: @escaping (Bool, Int, [Webhook]?, Error?) -> Void){
        Alamofire.request(self.kSiteUrl + TWApiClientConstants.APIPath.getAllWebhooks.path)
            .validate(statusCode: 200..<300)
            .validate(contentType: [self.kContentType])
            .authenticate(user: self.kApiToken, password: self.kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<Webhook>.init(rootObjectName: TWApiClientConstants.APIPath.getAllWebhooks.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, responseContainer.rootObjects, nil)
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
    
    func getWebhook(webhookId:String, _ responseBlock: @escaping (Bool, Int, Webhook?, Error?) -> Void){
        Alamofire.request(self.kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getAllWebhooks.path, webhookId))
            .validate(statusCode: 200..<300)
            .validate(contentType: [self.kContentType])
            .authenticate(user: self.kApiToken, password: self.kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Webhook>.init(rootObjectName: TWApiClientConstants.APIPath.getAllWebhooks.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, responseContainer.rootObject, nil)
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
    
    //ASK about format of request
    func putWebhook(webhook:Webhook, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        let parameters: [String : Any] = ["webhook" : webhook.dictionaryRepresentation() as! [String : Any], TWApiClientConstants.kStatus : "OK"]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.putWebhook.path, webhook.id!), method: HTTPMethod.put, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Webhook>.init(rootObjectName: TWApiClientConstants.APIPath.putWebhook.rootElement, dictionary: JSON){
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
    
    func resumeWebhook(webhook:Webhook, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.resumeWebhook.path, webhook.id!), method: HTTPMethod.put, parameters: nil, encoding: URLEncoding.default, headers: nil).validate(statusCode: 200..<300)
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
    
    func pauseWebhook(webhook:Webhook, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.pauseWebhook.path, webhook.id!), method: HTTPMethod.put, parameters: nil, encoding: URLEncoding.default, headers: nil).validate(statusCode: 200..<300)
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
    
    func deleteWebhook(webhook:Webhook, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.deleteWebhook.path, webhook.id!), method: HTTPMethod.delete, parameters: nil, encoding: URLEncoding.default, headers: nil).validate(statusCode: 200..<300)
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
    
    func createWebhook(webhook:Webhook, _ responseBlock: @escaping (Bool, Int, Webhook?, Error?) -> Void){
        
        let parameters: [String : Any] = ["webhook" : webhook.dictionaryRepresentation() as! [String : Any], TWApiClientConstants.kStatus : "OK"]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.putWebhook.path, webhook.id!), method: HTTPMethod.post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Webhook>.init(rootObjectName: TWApiClientConstants.APIPath.putWebhook.rootElement, dictionary: JSON){
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
    
    func enableWebhooks( _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.enableWebhooks.path), method: HTTPMethod.put, parameters: nil, encoding: URLEncoding.default, headers: nil).validate(statusCode: 200..<300)
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
    
    func disableWebhooks(_ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.disableWebhooks.path), method: HTTPMethod.put, parameters: nil, encoding: URLEncoding.default, headers: nil).validate(statusCode: 200..<300)
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
