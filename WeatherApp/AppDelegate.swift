//
//  AppDelegate.swift
//  WeatherApp
//
//  Created by Дмитрий Саврасов on 12.08.22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow()
        window.rootViewController = ViewController()
        window.makeKeyAndVisible()
        
        self.window = window
        
        return true
    }
}

