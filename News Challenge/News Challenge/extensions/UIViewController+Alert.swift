//
//  UIViewController+Alert.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 12/01/21.
//

import UIKit

extension UIViewController {
    func presentAlert(message: String) {
        let alertController = UIAlertController(title: "News Challenge", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default));
        self.present(alertController, animated: true, completion: nil)
    }
}
