//
//  LoginViewProtocol.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 11/01/21.
//

import Foundation

protocol LoginViewProtocol: NSObjectProtocol {
    func goToFeed()
    func showError(message: String)
}
