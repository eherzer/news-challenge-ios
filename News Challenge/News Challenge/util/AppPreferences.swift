//
//  AppPreferences.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 11/01/21.
//

import Foundation

enum KeyPreferences: String {
    case accessToken = "accessToken"
}

class AppPreferences {
    static func save(value: Any?, forKey: KeyPreferences) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(value, forKey: forKey.rawValue)
    }
    
    static func loadString(forKey: KeyPreferences) -> String {
        let userDefaults = UserDefaults.standard
        return userDefaults.string(forKey: forKey.rawValue) ?? ""
    }
    
    static func loadInt(forKey: KeyPreferences) -> Int {
        let userDefaults = UserDefaults.standard
        return userDefaults.integer(forKey: forKey.rawValue)
    }
    
    static func loadData(forKey: KeyPreferences) -> Data? {
        let userDefaults = UserDefaults.standard
        return userDefaults.data(forKey: forKey.rawValue)
    }
}
