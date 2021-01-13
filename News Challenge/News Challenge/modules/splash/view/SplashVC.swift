//
//  SplashVC.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 11/01/21.
//

import UIKit

class SplashVC: UIViewController {
    private var presenter: SplashPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter = SplashPresenter(view: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        presenter.checkAccessToken()
    }
}

extension SplashVC: SplashViewProtocol {
    func goToLogin() {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.window?.rootViewController = LoginVC()
        }
    }
    
    func goToFeed() {
        //TODO
    }
}
