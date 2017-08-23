//
//  UIColor-Extension.swift
//  DYDemo
//
//  Created by ZYP-MAC on 2017/8/3.
//  Copyright © 2017年 ZYP-MAC. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(r:CGFloat,g : CGFloat,b : CGFloat) {
        
        self.init(colorLiteralRed: Float(r/255.0), green: Float(g/255.0), blue: Float(b/255.0), alpha: 1.0)
    }
    
    
    convenience init(hexColor: String) {
        
        // 存储转换后的数值
        var red:UInt32 = 0, green:UInt32 = 0, blue:UInt32 = 0
        
        
        // 分别转换进行转换
        Scanner(string: hexColor[0..<2]).scanHexInt32(&red)
        
        Scanner(string: hexColor[2..<4]).scanHexInt32(&green)
        
        Scanner(string: hexColor[4..<6]).scanHexInt32(&blue)
        
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue: CGFloat(blue)/255.0, alpha: 1.0)
    }
}

