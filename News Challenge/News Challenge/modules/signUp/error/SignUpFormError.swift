//
//  SignUpFormError.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 12/01/21.
//

import Foundation

enum SignUpFormError: Error {
    case emptyName
    case emptyEmail
    case incorrectEmail
    case emptyPassword
    case passwordDoesntMatch
    
    var localizedDescription: String {
        switch self {
        case .emptyName:
            return "O nome precisa ser preenchido"
        case .emptyEmail:
            return "O e-mail precisa ser preenchido"
        case .incorrectEmail:
            return "E-mail não é válido"
        case .emptyPassword:
            return "A senha precisa ser preenchida"
        case .passwordDoesntMatch:
            return "As senhas não coincidem"
        }
    }
}
