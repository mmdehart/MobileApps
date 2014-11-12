//
//  AppDelegate.swift
//  CodeOnlyTableView
//
//  Created by Madison DeHart on 10/4/14.
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
        let tableViewController = ColorTableViewController(nibName: nil, bundle: nil)
        window?.rootViewController = UINavigationController(rootViewController: tableViewController)
        window?.makeKeyAndVisible()
        return true
    }

}

