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
    
    func getAllTimeEntries(urlParams: String, _ responseBlock: @escaping (Bool, Int, [TimeEntry]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getAllTimeEntries.path) + (urlParams.isEmpty ? "" : "?" + urlParams), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<TimeEntry>.init(rootObjectName: TWApiClientConstants.APIPath.getAllTimeEntries.rootElement, dictionary: JSON){
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
    
    func getAllTimeEntriesForProject(projectId: String, urlParams: String, _ responseBlock: @escaping (Bool, Int, [TimeEntry]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getAllTimeEntriesForProject.path, projectId) + (urlParams.isEmpty ? "" : "?" + urlParams), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<TimeEntry>.init(rootObjectName: TWApiClientConstants.APIPath.getAllTimeEntriesForProject.rootElement, dictionary: JSON){
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
    
    func getAllToDoTimeEntries(todoId: String, urlParams: String, _ responseBlock: @escaping (Bool, Int, [TimeEntry]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getAllToDoTimeEntries.path, todoId), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<TimeEntry>.init(rootObjectName: TWApiClientConstants.APIPath.getAllToDoTimeEntries.rootElement, dictionary: JSON){
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
    
    func createTimeEntryForProject(projectId: String, timeEntry: [String: Any], _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        let parameters: [String : Any] = ["time-entry" : timeEntry]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.createTimeEntryForProject.path, projectId), method: HTTPMethod.post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Project>.init(rootObjectName: TWApiClientConstants.APIPath.createTimeEntryForProject.rootElement, dictionary: JSON){
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
    
    func createTimeEntryForTask(taskId: String, timeEntry: [String: Any], _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        let parameters: [String : Any] = ["time-entry" : timeEntry]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.createTimeEntryForTask.path, taskId), method: HTTPMethod.post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Project>.init(rootObjectName: TWApiClientConstants.APIPath.createTimeEntryForTask.rootElement, dictionary: JSON){
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

    func getSingleTimeEntry(timeEntryId: String,  _ responseBlock: @escaping (Bool, Int, TimeEntry?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getSingleTimeEntry.path, timeEntryId), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<TimeEntry>.init(rootObjectName: TWApiClientConstants.APIPath.getSingleTimeEntry.rootElement, dictionary: JSON){
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
    
    func updateEntry(timeEntryId: String, timeEntry: [String: Any], _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        let parameters: [String : Any] = ["time-entry" : timeEntry]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.updateEntry.path, timeEntryId), method: HTTPMethod.put, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<TimeEntry>.init(rootObjectName: TWApiClientConstants.APIPath.updateEntry.rootElement, dictionary: JSON){
                            if (responseContainer.status == TWApiStatusCode.OK){
                                responseBlock (true, 200, nil)
                            } else {
                                responseBlock (false, 0,  TWApiClientErrors.ResponseStatusNotOK)
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
    
    func deleteEntry(timeEntryId: String, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.deleteEntry.path, timeEntryId), method: HTTPMethod.delete, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<TimeEntry>.init(rootObjectName: TWApiClientConstants.APIPath.deleteEntry.rootElement, dictionary: JSON){
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
    
    func getTotalTimes(urlParams: String,  _ responseBlock: @escaping (Bool, Int, TimeTotals?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getTotalTimes.path) + (urlParams.isEmpty ? "" : "?" + urlParams), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<TimeTotals>.init(rootObjectName: TWApiClientConstants.APIPath.getTotalTimes.rootElement, dictionary: JSON){
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
    
    func getTotalTimesForProject(projectId: String, urlParams: String, _ responseBlock: @escaping (Bool, Int, [ProjectTimeTotals]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getTotalTimesForProject.path, projectId) + (urlParams.isEmpty ? "" : "?" + urlParams), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<ProjectTimeTotals>.init(rootObjectName: TWApiClientConstants.APIPath.getTotalTimesForProject.rootElement, dictionary: JSON){
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
    
    func getTotalTimesForTracklist(taskListId: String, urlParams: String, _ responseBlock: @escaping (Bool, Int, [ProjectTimeTotals]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getTotalTimesForTracklist.path, taskListId) + (urlParams.isEmpty ? "" : "?" + urlParams), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<ProjectTimeTotals>.init(rootObjectName: TWApiClientConstants.APIPath.getTotalTimesForTracklist.rootElement, dictionary: JSON){
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
    
    func getTotalTimesForTasks(taskId: String, urlParams: String,  _ responseBlock: @escaping (Bool, Int, [ProjectTimeTotals]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getTotalTimesForTasks.path, taskId) + (urlParams.isEmpty ? "" : "?" + urlParams), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<ProjectTimeTotals>.init(rootObjectName: TWApiClientConstants.APIPath.getTotalTimesForTasks.rootElement, dictionary: JSON){
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
    
    func getTotalTimesPerProject(taskId: String,urlParams: String, _ responseBlock: @escaping (Bool, Int, [TimeTotalsPerProject]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getTotalTimesForTasks.path, taskId) + (urlParams.isEmpty ? "" : "?" + urlParams), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<TimeTotalsPerProject>.init(rootObjectName: TWApiClientConstants.APIPath.getTotalTimesForTasks.rootElement, dictionary: JSON){
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
