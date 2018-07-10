//
//  UIStoryboard+Instance.swift.swift
//  ios-universal-app-demo
//
//  Created by Eiji Kushida on 2018/07/10.
//  Copyright © 2018年 Eiji Kushida. All rights reserved.
//

import UIKit

public extension UIStoryboard {
    
    /// Storyboardからインスタンスを取得する
    class func viewController<T: UIViewController>(storyboardName: String,
                                                   identifier: String) -> T? {
        
        return UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(
            withIdentifier: identifier) as? T
    }
}
