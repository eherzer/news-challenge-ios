//
//  LoginVC.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 12/01/21.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    private var presenter: LoginPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = LoginPresenter(view: self, service: LoginService())
    }
    
    @IBAction func btnSignInClicked(_ sender: Any) {
        presenter.signIn(email: tfEmail.text, password: tfPassword.text)
    }
    
    @IBAction func btnSignUpClicked(_ sender: Any) {
        let signUpVC = SignUpVC()
        signUpVC.modalPresentationStyle = .fullScreen
        self.present(signUpVC, animated: true)
    }
}

extension LoginVC: LoginViewProtocol {
    func goToFeed() {
        //TODO
    }
    
    func showError(message: String) {
        presentAlert(message: message)
    }
}
