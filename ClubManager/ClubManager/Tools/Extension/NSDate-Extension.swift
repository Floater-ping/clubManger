//
//  NSDate-Extension.swift
//  DYDemo
//
//  Created by ZYP-MAC on 2017/8/7.
//  Copyright © 2017年 ZYP-MAC. All rights reserved.
//

import Foundation

extension Date {

    static func getCurrentTime() -> String {
        let nowDate = Date()
        let interval = nowDate.timeIntervalSince1970
        return "\(interval)"
    }
}
