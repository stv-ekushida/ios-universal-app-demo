//
//  ScreenType.swift
//  ios-universal-app-demo
//
//  Created by Eiji Kushida on 2018/07/10.
//  Copyright © 2018年 Eiji Kushida. All rights reserved.
//

import UIKit

enum ScreenType {
    
    case launch
    
    /// ストーリーボード名
    var storyBoardName: String {
        
        switch self {
        case .launch:
            return DeviceModel.isPad ? "PadViewController" : "PhoneViewController"
        }
    }
    
    /// ViewControllerを取得する
    ///
    /// - Returns:　ViewController
    func instance<T: UIViewController> () -> T? {
        
        switch self {
        case .launch:
            return UIStoryboard.viewController(storyboardName: storyBoardName,
                                               identifier: storyBoardName)
        }
    }
}
