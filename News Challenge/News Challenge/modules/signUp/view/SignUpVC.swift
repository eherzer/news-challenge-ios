//
//  SignUpVC.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 12/01/21.
//

import UIKit

class SignUpVC: UIViewController {
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfBirthDate: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfRepeatPassword: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    private var presenter: SignUpPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = SignUpPresenter(view: self, service: SignUpService())
        
        let datePicker = UIDatePicker()
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.backgroundColor = UIColor.white
        datePicker.datePickerMode = .date
        datePicker.maximumDate = Date()
        datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for: .valueChanged)
        
        tfBirthDate.inputView = datePicker
    }
    
    @objc func datePickerValueChanged(_ sender: UIDatePicker) {
        tfBirthDate.text = DateUtils.formatDate(sender.date)
    }
    
    @IBAction func btnSignUpClicked(_ sender: Any) {
        activityIndicator.startAnimating()
        presenter.signUp(name: tfName.text, email: tfEmail.text, bithDate: tfBirthDate.text, password: tfPassword.text, repeatPassword: tfRepeatPassword.text)
    }
    
    @IBAction func btnBackClicked(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

extension SignUpVC: SignUpViewProtocol {
    func goToFeed() {
        //TODO
    }
    
    func showError(message: String) {
        activityIndicator.stopAnimating()
        presentAlert(message: message)
    }
}
