//
//  AppDelegate.swift
//  teste
//
//  Created by Mac on 09/01/2018.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = MainTabBarController()
        return true
    }
}

class CustomNavigationController: UINavigationController{
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}

