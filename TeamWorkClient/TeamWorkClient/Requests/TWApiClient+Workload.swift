//
//  TWApiClient+Workload.swift
//  TeamWorkClient
//
//  Created by Anton Gubarenko on 01.02.17.
//  Copyright © 2017 Anton Gubarenko. All rights reserved.
//

import Foundation
import Alamofire

extension TWApiClient{
    
    func getWorkload(startDate:Date, endDate:Date, includeTasksWithoutDates:Bool = false, distributeEstimatedTimeToAssignees:Bool = false, prorataEstimatedTimeToAssignees:Bool = false, page:Int = 1,  pageSize:Int = 50, sortBy:String = "company", prorataEstimatedTime:Date?, _ responseBlock: @escaping (Bool, Int, [Workload]?, Error?) -> Void){       
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyymmdd"
        var parameters = ["startDate" : dateFormatter.string(from: startDate),
                          "endDate": dateFormatter.string(from: endDate),
                          "includeTasksWithoutDates": wrapBoolValue(includeTasksWithoutDates),
                          "distributeEstimatedTimeToAssignees": wrapBoolValue(distributeEstimatedTimeToAssignees),
                          "prorataEstimatedTimeToAssignees": wrapBoolValue(prorataEstimatedTimeToAssignees),
                          "page": String(page),
                          "pageSize": String(pageSize),
                          "sortBy": sortBy
        ]
        if (prorataEstimatedTime != nil){
            parameters["prorataEstimatedTime"] = dateFormatter.string(from: prorataEstimatedTime!)
        }
        
        Alamofire.request(kSiteUrl + TWApiClientConstants.APIPath.getWorkload.path, method: HTTPMethod.get, parameters: parameters, encoding: URLEncoding.default, headers: nil)
            .validate(statusCode: 200..<300)
            .validate(contentType: [kContentType])
            .authenticate(user: kApiToken, password: kAuthPass)
            .responseJSON { response in
                switch response.result {
                case .success:
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        if let responseContainer = MultipleResponseContainer<Workload>.init(rootObjectName: TWApiClientConstants.APIPath.getWorkload.rootElement, dictionary: JSON){
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
}
