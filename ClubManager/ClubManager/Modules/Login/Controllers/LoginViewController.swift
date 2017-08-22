//
//  LoginViewController.swift
//  ClubManager
//
//  Created by ZYP-MAC on 2017/8/22.
//  Copyright © 2017年 ZYP-MAC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "登陆"
        view.backgroundColor = UIColor.white
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "btn_colse"), style: UIBarButtonItemStyle.done, target: self, action:#selector(closeBtnClick))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}

extension LoginViewController {
   @objc func closeBtnClick(){
    
        
    }
}
