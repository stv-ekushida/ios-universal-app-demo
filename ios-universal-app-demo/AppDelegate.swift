//
//  AppDelegate.swift
//  ios-universal-app-demo
//
//  Created by Eiji Kushida on 2018/07/10.
//  Copyright © 2018年 Eiji Kushida. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        setupLaunchViewController()
        return true
    }
    
    // note : info.plistのRequire full screenをOnにしなければ、
    //        supportedInterfaceOrientationsForが呼ばれない
    func application(_ application: UIApplication,
                     supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return DeviceModel.isPad ?
            UIInterfaceOrientationMask.landscape : UIInterfaceOrientationMask.portrait
    }
}

extension AppDelegate {
    
    private func setupLaunchViewController() {
        guard let vc = ScreenType.launch.instance() else {
            return
        }

        let navigationController = UINavigationController(rootViewController: vc)
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }
}
