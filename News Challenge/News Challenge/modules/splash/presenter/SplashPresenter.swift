//
//  SplashPresenter.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 11/01/21.
//

import Foundation

class SplashPresenter: SplashPresenterProtocol {
    weak private var view: SplashViewProtocol?
    
    init(view: SplashViewProtocol) {
        self.view = view
    }
    
    func checkAccessToken() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: { (_) in
            if AppPreferences.loadString(forKey: .accessToken).isEmpty {
                self.view?.goToLogin()
            } else {
                self.view?.goToFeed()
            }
        })
    }
}
