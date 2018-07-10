//
//  DeviceModel.swift
//  ios-universal-app-demo
//
//  Created by Eiji Kushida on 2018/07/10.
//  Copyright © 2018年 Eiji Kushida. All rights reserved.
//

import UIKit

final class DeviceModel {
    
    /// デバイスがiPadか？
    static var isPad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    /// OSバージョン
    static var osVersion: String {
        return UIDevice.current.systemVersion
    }
}
