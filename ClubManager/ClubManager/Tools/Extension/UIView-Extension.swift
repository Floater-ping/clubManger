//
//  UIView-Extension.swift
//  ClubManager
//
//  Created by ZYP-MAC on 2017/8/23.
//  Copyright © 2017年 ZYP-MAC. All rights reserved.
//

import UIKit


//MARK:- 给view加边框
extension UIView {
    
    /// 添加边框
    func border() {
        layer.borderWidth = pLineWidth
        layer.borderColor = pLineColor.cgColor
    }
    
    /// 添加指定颜色的边框
    func borderColor(_ color: UIColor) {
        layer.borderWidth = pLineWidth
        layer.borderColor = color.cgColor
        
    }
    
    
    /// 添加指定颜色和宽度的边框
    func borderColorAndWidth(_ color: UIColor,width: CGFloat) {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
    }
    
    
    /// 添加左边边框
    func leftBorder() {
        let leftBorder : CALayer = CALayer()
        leftBorder.frame = CGRect(x: 0.0, y: frame.size.height, width: pLineWidth, height: frame.size.height)
        leftBorder.backgroundColor = pLineColor.cgColor
        layer.addSublayer(leftBorder)
    }
    
    
    /// 添加指定颜色和的左边边框
    func leftBorderColorAndWidth(_ color: UIColor,width: CGFloat) {
        let leftBorder : CALayer = CALayer()
        leftBorder.frame = CGRect(x: 0.0, y: frame.size.height, width: width, height: frame.size.height)
        leftBorder.backgroundColor = color.cgColor
        layer.addSublayer(leftBorder)
    }
    
    
    
    
    
    /// 添加右边边框
    func rightBorder() {
        let leftBorder : CALayer = CALayer()
        leftBorder.frame = CGRect(x: frame.size.width, y: frame.size.height, width: pLineWidth, height: frame.size.height)
        leftBorder.backgroundColor = pLineColor.cgColor
        layer.addSublayer(leftBorder)
    }
    /// 添加指定颜色和的右边边框
    func rightBorderColorAndWidth(_ color: UIColor,width: CGFloat) {
        let rightBorder : CALayer = CALayer()
        rightBorder.frame = CGRect(x: frame.size.width, y: frame.size.height, width: width, height: frame.size.height)
        rightBorder.backgroundColor = color.cgColor
        layer.addSublayer(rightBorder)
    }
    
    /// 添加顶部边框
    func topBorder() {
        let topBorder : CALayer = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: pLineWidth)
        topBorder.backgroundColor = pLineColor.cgColor
        layer.addSublayer(topBorder)
    }
    
    
    
    /// 添加指定颜色和的顶部边框
    func topBorderColorAndHeight(_ color: UIColor,height: CGFloat) {
        let topBorder : CALayer = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: height)
        topBorder.backgroundColor = color.cgColor
        layer.addSublayer(topBorder)
    }
    
    
    /// 添加指定颜色和的底部边框
    func bottomBorder() {
        let bottomBorder : CALayer = CALayer()
        bottomBorder.frame = CGRect(x: 0, y: frame.size.height, width: frame.size.width, height: pLineWidth)
        bottomBorder.backgroundColor = pLineColor.cgColor
        layer.addSublayer(bottomBorder)
    }
    
    
    /// 添加指定颜色和的底部边框
    func bottomBorderColorAndHeight(_ color: UIColor,height: CGFloat) {
        let bottomBorder : CALayer = CALayer()
        bottomBorder.frame = CGRect(x: 0, y: frame.size.height, width: frame.size.width, height: height)
        bottomBorder.backgroundColor = color.cgColor
        layer.addSublayer(bottomBorder)
    }
    
}


//MARK:- 给view切圆角
extension UIView {
    
    func cutCircular() {
        layer.cornerRadius = 3
        layer.masksToBounds = true
    }
    
    func cutCircularWithRadius(_ radius: CGFloat) {
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
    
}


