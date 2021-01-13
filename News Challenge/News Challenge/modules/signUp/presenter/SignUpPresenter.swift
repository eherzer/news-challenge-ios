//
//  SignUpPresenter.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 12/01/21.
//

import Foundation

class SignUpPresenter: SignUpPresenterProtocol {
    weak private var view: SignUpViewProtocol?
    private var service: SignUpServiceProtocol
    
    init(view: SignUpViewProtocol, service: SignUpServiceProtocol) {
        self.view = view
        self.service = service
    }
    
    func signUp(name: String?, email: String?, bithDate: String?, password: String?, repeatPassword: String?) {
        if let error = validate(name: name, email: email, password: password, repeatPassword: repeatPassword) {
            self.view?.showError(message: error.localizedDescription)
            return
        }
        
        service.signUp(name: name!.trimm(), email: email!.trimm(), bithDate: bithDate, password: password!) { (token) in
            AppPreferences.save(value: token, forKey: .accessToken)
            self.view?.goToFeed()
        } failure: { (errorMessage) in
            self.view?.showError(message: errorMessage)
        }
    }
    
    private func validate(name: String?, email: String?, password: String?, repeatPassword: String?) -> SignUpFormError? {
        if Util.isEmpty(name) {
            return .emptyName
        }
        
        if Util.isEmpty(email) {
            return .emptyEmail
        }
        
        if !Util.isValidEmail(email) {
            return .incorrectEmail
        }
        
        if Util.isEmpty(password) {
            return .emptyPassword
        }
        
        if password != repeatPassword {
            return .passwordDoesntMatch
        }
        
        return nil
    }
}
