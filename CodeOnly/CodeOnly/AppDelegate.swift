//
//  AppDelegate.swift
//  CodeOnly
//
//  Created by Madison DeHart on 9/18/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let screenRect = UIScreen.mainScreen().bounds
        window = UIWindow(frame: screenRect)
        let navController = UINavigationController(nibName: nil, bundle: nil)
        let yellowViewController = YellowViewController(nibName: nil, bundle: nil)
        navController.pushViewController(yellowViewController, animated: false)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        return true
    }
}

