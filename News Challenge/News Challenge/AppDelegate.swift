//
//  AppDelegate.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 11/01/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let initialViewController = SplashVC()
        
        window!.rootViewController = initialViewController
        window!.makeKeyAndVisible()
        
        return true
    }
}
