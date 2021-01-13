//
//  Util.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 12/01/21.
//

import Foundation

class Util {
    static func isValidEmail(_ email: String?) -> Bool {
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}")
        return emailPredicate.evaluate(with: email)
    }
    
    static func isEmpty(_ str: String?) -> Bool {
        return (str?.trimm() ?? "").isEmpty
    }
}
