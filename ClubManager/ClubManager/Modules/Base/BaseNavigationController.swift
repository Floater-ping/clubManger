//
//  BaseNavigationController.swift
//  ClubManager
//
//  Created by ZYP-MAC on 2017/8/22.
//  Copyright © 2017年 ZYP-MAC. All rights reserved.
//

import UIKit
class BaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 获取系统的pop手势
        guard let systemGes = interactivePopGestureRecognizer else {return}
        // 2 获取手势添加到的view中
        guard let gesView = systemGes.view else {return}
        
        // 3. 获取target /action
        /*
         // 3.1  运用运行时查看搜索的属性名称
         var count : UInt32 = 0
         let ivars = class_copyIvarList(UIGestureRecognizer.self, &count)!
         for i in 0..<count {
         
         let ivar = ivars[Int(i)]
         let name = ivar_getName(ivar)
         print(String(cString: name!))
         
         
         }
         */
        
        let targets = systemGes.value(forKey: "_targets") as? [NSObject]
        guard let targetObjc = targets?.first else { return }
        guard let target = targetObjc.value(forKey: "target") else { return }
        
        let action = Selector(("handleNavigationTransition:"));
        let panGes = UIPanGestureRecognizer()
        gesView.addGestureRecognizer(panGes)
        panGes.addTarget(target, action: action)
        
        configNaviBar()
        
        //        let viewArr : [UIView] = UINavigationBar.appearance().n.subviews
        //
        //        for  vi in viewArr {
        //            if (vi.isKind(of: UIView.classForCoder()) && vi.frame.size.height == 1) {
        //                vi.backgroundColor = UIColor.red
        //            }
        //        }
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        viewController.hidesBottomBarWhenPushed = true
        super.pushViewController(viewController, animated: animated)
    }
    
}

extension BaseNavigationController {
    
    func configNaviBar() {
        /// 设置导航条颜色
        UINavigationBar.appearance().barTintColor = pNavigationBarColor
        
        /// 设置导航栏的半透明效果
        UINavigationBar.appearance().isTranslucent = false
        
        /// 设置导航栏字体颜色
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont.systemFont(ofSize: 18.0)]
        
        
        navigationBar.setBackgroundImage(imageFromColor(UIColor(r: 40, g: 39, b: 43)), for: UIBarPosition(rawValue: 0)!, barMetrics: UIBarMetrics.default)
        navigationBar.shadowImage = UIImage()
    }
    
    
    //纯色转图片
    func imageFromColor(_ color: UIColor) -> UIImage {
        let rect : CGRect = CGRect(x: 0, y: 0, width: pScreenWidth, height: pNavigationBarH+pStatusBarH)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()!
        
        
        context.setFillColor(color.cgColor)
        let image : UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        return image
    }
    
}
