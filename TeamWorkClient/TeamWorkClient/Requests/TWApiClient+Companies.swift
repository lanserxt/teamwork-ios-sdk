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
    
    func createCompany(company: Company, _ responseBlock: @escaping (Bool, Int, Company?, Error?) -> Void){
        
        let parameters: [String : Any] = ["company" : company.dictionaryRepresentation() as! [String : Any]]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.createCompany.path), method: HTTPMethod.post, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Company>.init(rootObjectName: TWApiClientConstants.APIPath.createCategory.rootElement, dictionary: JSON){
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
    
    func updateCompany(company: Company, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        
        let parameters: [String : Any] = ["company" : company.dictionaryRepresentation() as! [String : Any]]
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.updateCompany.path, company.id!), method: HTTPMethod.put, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Category>.init(rootObjectName: TWApiClientConstants.APIPath.updateCompany.rootElement, dictionary: JSON){
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
    
    func deleteCompany(company: Company, _ responseBlock: @escaping (Bool, Int, Error?) -> Void){
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.deleteCompany.path, company.id!), method: HTTPMethod.delete, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Category>.init(rootObjectName: TWApiClientConstants.APIPath.deleteCompany.rootElement, dictionary: JSON){
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
    
    func getCompany(companyId: String,  _ responseBlock: @escaping (Bool, Int, Company?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getCompany.path, companyId), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = ResponseContainer<Company>.init(rootObjectName: TWApiClientConstants.APIPath.getCompany.rootElement, dictionary: JSON){
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
    
    func getCompanies(page: Int = 1, pageSize: Int = 20, _ responseBlock: @escaping (Bool, Int, [Company]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getCompanies.path, page, pageSize), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<Company>.init(rootObjectName: TWApiClientConstants.APIPath.getCompanies.rootElement, dictionary: JSON){
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
    
    func getCompaniesForProject(projectId: String, _ responseBlock: @escaping (Bool, Int, [Company]?, Error?) -> Void){
        
        Alamofire.request(kSiteUrl + String.init(format: TWApiClientConstants.APIPath.getCompaniesForProject.path, projectId), method: HTTPMethod.get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<Company>.init(rootObjectName: TWApiClientConstants.APIPath.getCompaniesForProject.rootElement, dictionary: JSON){
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
