//
//  LoginServiceProtocol.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 11/01/21.
//

import Foundation

protocol LoginServiceProtocol {
    func signIn(email: String,
                password: String,
                success: @escaping(_ authorizationToken: String) -> Void,
                failure: @escaping(_ message: String) -> Void)
}
