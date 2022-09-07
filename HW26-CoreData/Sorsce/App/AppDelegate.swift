//
//  AppDelegate.swift
//  CoreDataHW26
//
//  Created by Andrei Maskal on 13/08/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Thread.sleep(forTimeInterval: 1)
        window = UIWindow()
        window?.makeKeyAndVisible()
        let usersViewController = UsersViewController()
        usersViewController.usersPresenter = UsersPresenter()
        window?.rootViewController = UINavigationController(rootViewController: usersViewController)
        return true
    }
}

    
   
