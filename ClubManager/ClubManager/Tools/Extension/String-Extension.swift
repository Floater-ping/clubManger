//
//  String-Extension.swift
//  ClubManager
//
//  Created by ZYP-MAC on 2017/8/23.
//  Copyright © 2017年 ZYP-MAC. All rights reserved.
//

import Foundation
extension String {
    
    /// String使用下标截取字符串
    /// 例: "示例字符串"[0..<2] 结果是 "示例"
    subscript (r: Range<Int>) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
            let endIndex = self.index(self.startIndex, offsetBy: r.upperBound)
            
            return self[startIndex..<endIndex]
        }
    }
}
