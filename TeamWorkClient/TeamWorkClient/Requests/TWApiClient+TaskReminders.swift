//
//  TWApiClient+TaskReminders.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 02.02.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import Foundation
import Alamofire

extension TWApiClient{
    
    func getAllRemindersOfTask(taskId:String, _ responseBlock: @escaping (Bool, Int, [Reminder]?, Error?) -> Void){
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getAllRemindersOfTask.path, taskId), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<Reminder>.init(rootObjectName: TWApiClientConstants.APIPath.getAllRemindersOfTask.rootElement, dictionary: JSON){
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
    
    func createReminderForTask(taskId: String, reminder:Reminder, _ responseBlock: @escaping (Bool, Int, String?, Error?) -> Void){
        
        let parameters: [String : Any] = ["reminder" : reminder.dictionaryRepresentation() as! [String : Any]]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.createReminderForTask.path, taskId), method: HTTPMethod.post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Tag>.init(rootObjectName: TWApiClientConstants.APIPath.createReminderForTask.rootElement, dictionary: JSON){
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
    
    func updateReminderForTask(taskId: String, reminder:Reminder, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        let parameters: [String : Any] = ["reminder" : reminder.dictionaryRepresentation() as! [String : Any]]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.updateReminderForTask.path, taskId), method: HTTPMethod.put, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Reminder>.init(rootObjectName: TWApiClientConstants.APIPath.updateReminderForTask.rootElement, dictionary: JSON){
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
                    responseBlock(false, (response.response?.statusCode)!,  error)
                }
        }
    }
    
    func updateReminderForTask(reminder:Reminder, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        let parameters: [String : Any] = ["reminder" : reminder.dictionaryRepresentation() as! [String : Any]]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.updateReminder.path, reminder.id!), method: HTTPMethod.put, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Reminder>.init(rootObjectName: TWApiClientConstants.APIPath.updateReminderForTask.rootElement, dictionary: JSON){
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
                    responseBlock(false, (response.response?.statusCode)!,  error)
                }
        }
    }
    
    func deleteReminderForTask(taskId: String, reminder:Reminder, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.deleteReminderForTask.path, taskId), method: HTTPMethod.delete, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Reminder>.init(rootObjectName: TWApiClientConstants.APIPath.deleteReminderForTask.rootElement, dictionary: JSON){
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
                    responseBlock(false, (response.response?.statusCode)!,  error)
                }
        }
    }
    
    func deleteReminder(reminder:Reminder, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.deleteReminder.path, reminder.id!), method: HTTPMethod.delete, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Reminder>.init(rootObjectName: TWApiClientConstants.APIPath.deleteReminder.rootElement, dictionary: JSON){
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
                    responseBlock(false, (response.response?.statusCode)!,  error)
                }
        }
    }
}
