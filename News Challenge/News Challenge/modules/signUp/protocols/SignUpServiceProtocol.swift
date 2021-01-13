//
//  SignUpServiceProtocol.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 12/01/21.
//

import Foundation

protocol SignUpServiceProtocol {
    func signUp(name: String,
                email: String,
                bithDate: String?,
                password: String,
                success: @escaping(_ authorizationToken: String) -> Void,
                failure: @escaping(_ message: String) -> Void)
}
