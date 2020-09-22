//
//  AppDelegate.swift
//  DevRef
//
//  Created by Alex on 22.05.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let viewController = ViewController()
        
        window?.rootViewController = viewController
        
        window?.makeKeyAndVisible()
        
        return true
    }

}

