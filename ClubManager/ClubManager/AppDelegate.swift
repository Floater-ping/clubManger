//
//  AppDelegate.swift
//  ClubManager
//
//  Created by ZYP-MAC on 2017/8/22.
//  Copyright © 2017年 ZYP-MAC. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let loginVC : LoginViewController = LoginViewController()
        let loginNav : BaseNavigationController = BaseNavigationController(rootViewController: loginVC)
        window?.rootViewController = loginNav
        window?.makeKeyAndVisible()
        
        return true
    }

   


}

