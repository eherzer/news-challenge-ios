//
//  BaseService.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 13/01/21.
//

import Foundation
import Alamofire
import SwiftyJSON

class BaseService {
    func request(endpoint: String, method: HTTPMethod, parameters: Parameters?, headers: HTTPHeaders? = nil, success: @escaping (_ jsonResponse: JSON?) -> Void, failure: @escaping (_ errorMessage: String?) -> Void) {
        let baseUrl = Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as! String
        let request = "\(baseUrl)\(endpoint)"
        
        AF.request(request, method: method, parameters: parameters, headers: headers).responseJSON { (response) in
            if let responseError = response.error {
                failure(responseError.localizedDescription)
                return
            }
            
            do {
                var jsonResponse: JSON?
                if let responseData = response.data {
                    jsonResponse = try JSON(data: responseData)
                }
                
                if let statusCode = response.response?.statusCode, statusCode < 300 {
                    success(jsonResponse)
                    return
                }
                
                if let errorMessage = jsonResponse?["message"].string {
                    failure(errorMessage)
                    return
                }
                
                failure(nil)
            } catch {
                failure(error.localizedDescription)
            }
        }
    }
}
