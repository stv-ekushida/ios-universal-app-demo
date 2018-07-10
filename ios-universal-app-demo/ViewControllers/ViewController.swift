//
//  ViewController.swift
//  ios-universal-app-demo
//
//  Created by Eiji Kushida on 2018/07/10.
//  Copyright © 2018年 Eiji Kushida. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        #if IPAD
            print("ipad版アプリのビルド")
        #elseif IPHONE
            print("iphone版アプリのビルド")
        #else
            print("その他のビルド")
        #endif
    }
}

