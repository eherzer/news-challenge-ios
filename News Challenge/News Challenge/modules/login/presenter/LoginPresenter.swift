//
//  LoginPresenter.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 12/01/21.
//

import Foundation

class LoginPresenter: LoginPresenterProtocol {
    weak private var view: LoginViewProtocol?
    private var service: LoginServiceProtocol
    
    init(view: LoginViewProtocol, service: LoginServiceProtocol) {
        self.view = view
        self.service = service
    }
    
    func signIn(email: String?, password: String?) {
        if let error = validate(email: email, password: password) {
            self.view?.showError(message: error.localizedDescription)
            return
        }
        
        service.signIn(email: email!.trimm(), password: password!.trimm()) { (token) in
            AppPreferences.save(value: token, forKey: .accessToken)
            self.view?.goToFeed()
        } failure: { (errorMessage) in
            self.view?.showError(message: errorMessage)
        }
    }
    
    private func validate(email: String?, password: String?) -> LoginFormError? {
        if Util.isEmpty(email) {
            return .emptyEmail
        }
        
        if Util.isEmpty(password) {
            return .emptyPassword
        }
        
        return nil
    }
}
