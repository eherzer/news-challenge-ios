//
//  SignUpService.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 12/01/21.
//

import Foundation

class SignUpService: BaseService, SignUpServiceProtocol {
    func signUp(name: String, email: String, bithDate: String?, password: String, success: @escaping (String) -> Void, failure: @escaping (String) -> Void) {
        let endpoint = "/v1/client/auth/signup"
        
        let parameters = ["name": name,
                          "email": email,
                          "password": password]
        
        request(endpoint: endpoint, method: .post, parameters: parameters) { (jsonResponse) in
            if let token = jsonResponse?["token"].string {
                success(token)
            } else {
                failure("Não recebeu o token")
            }
        } failure: { (errorMessage) in
            failure(errorMessage ?? "Não foi possível realizar o cadastro")
        }
    }
}
