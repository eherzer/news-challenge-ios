//
//  LoginFormError.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 12/01/21.
//

import Foundation

enum LoginFormError: Error {
    case emptyEmail
    case emptyPassword
    
    var localizedDescription: String {
        switch self {
        case .emptyEmail:
            return "O e-mail precisa ser preenchido"
        case .emptyPassword:
            return "A senha precisa ser preenchida"
        }
    }
}
