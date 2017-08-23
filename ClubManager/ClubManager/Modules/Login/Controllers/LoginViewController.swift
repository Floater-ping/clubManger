//
//  LoginViewController.swift
//  ClubManager
//
//  Created by ZYP-MAC on 2017/8/22.
//  Copyright © 2017年 ZYP-MAC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK:- 蓝加载属性
    lazy var nameTextField : UITextField = {
        let nameTF = UITextField()
        nameTF.textColor = UIColor.white
        nameTF.font = UIFont.systemFont(ofSize: 14.0)
        nameTF.keyboardType = .namePhonePad
        nameTF.attributedPlaceholder = NSAttributedString.init(string:"请输入账户名", attributes: [
            NSForegroundColorAttributeName:UIColor.lightGray])
        return nameTF
    }()
    
    var passwordTextField : UITextField = {
        let passwordTF = UITextField()
        passwordTF.textColor = UIColor.white
        passwordTF.font = UIFont.systemFont(ofSize: 14.0)
        passwordTF.attributedPlaceholder = NSAttributedString.init(string:"请输入密码", attributes: [
            NSForegroundColorAttributeName:UIColor.lightGray])
        return passwordTF
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /// 1. 设置导航条
        configNavigationBar()
        /// 2. 设置主页面UI
        configCommonUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}

//MARK:- 设置ui
extension LoginViewController {
    
    fileprivate func configNavigationBar() {
        title = "登陆"
        view.backgroundColor = pNavigationBarColor
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "btn_colse"), style: UIBarButtonItemStyle.done, target: self, action:#selector(closeBtnClick))
    }
    
    fileprivate func configCommonUI() {
        let bgView : UIView = UIView()
        bgView.backgroundColor = UIColor(hexColor: "201F23")
        view.addSubview(bgView)
        bgView.snp_makeConstraints { (make) in
            let _ = make.left.equalTo(20)
            let _ = make.right.equalTo(-20)
            let _ = make.top.height.equalTo(100)
        }
        
        
        
        bgView.cutCircular()
        
        let accountLabel : UILabel = UILabel()
        accountLabel.textColor = UIColor.white
        accountLabel.text = "账户："
        accountLabel.font = UIFont.systemFont(ofSize: 16.0)
        bgView.addSubview(accountLabel)
        accountLabel.snp_makeConstraints { (make) in
            let _ = make.width.equalTo(50)
            let _ = make.left.top.equalTo(10)
        }
        
        bgView.addSubview(nameTextField)
        nameTextField.snp_makeConstraints { (make) in
            let _ = make.left.equalTo(accountLabel.snp_right).offset(2)
            let _ = make.right.equalTo(-12)
            let _ = make.centerY.equalTo(accountLabel.snp_centerY)
        }
        
        
        let passwordLabel : UILabel = UILabel()
        passwordLabel.textColor = UIColor.white
        passwordLabel.text = "密码："
        passwordLabel.font = UIFont.systemFont(ofSize: 16.0)
        bgView.addSubview(passwordLabel)
        passwordLabel.snp_makeConstraints { (make) in
            let _ =  make.width.equalTo(accountLabel.snp_width)
            let _ =  make.left.equalTo(accountLabel.snp_left)
            let _ =  make.bottom.equalTo(-10)
        }
        
        bgView.addSubview(passwordTextField)
        passwordTextField.snp_makeConstraints { (make) in
            let _ =  make.left.equalTo(nameTextField.snp_left)
            let _ =  make.right.equalTo(nameTextField.snp_right)
            let _ =  make.centerY.equalTo(passwordLabel.snp_centerY)
        }
        
        
        let solutionImgV : UIImageView = UIImageView(image: UIImage(named: "icon_pwd"))
        solutionImgV.sizeToFit()
        view.addSubview(solutionImgV)
        solutionImgV.snp_makeConstraints { (make) in
            let _ =  make.top.equalTo(bgView.snp_bottom).offset(22)
            let _ =  make.left.equalTo(bgView.snp_left)
        }
        
        /// 忘记密码按钮
        let forgetButton : UIButton = UIButton(type: UIButtonType.custom)
        forgetButton.setTitle("忘记密码", for: .normal)
        forgetButton.titleLabel?.font = UIFont.systemFont(ofSize: 14.0)
        forgetButton.addTarget(self, action: #selector(forgetButtonClick), for: .touchUpInside)
        forgetButton.sizeToFit()
        view.addSubview(forgetButton)
        forgetButton.snp_makeConstraints { (make) in
            let _ = make.left.equalTo(solutionImgV.snp_right).offset(12)
            let _ = make.centerY.equalTo(solutionImgV.snp_centerY)
        }
        
        
        
        /// 登陆按钮
        let loginButton : UIButton = UIButton(type: UIButtonType.custom)
        loginButton.setTitle("登陆", for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 14.0)
        loginButton.addTarget(self, action: #selector(loginButtonClick), for: .touchUpInside)
        loginButton.sizeToFit()
        loginButton.cutCircular()
        loginButton.backgroundColor = pYellowColor
        view.addSubview(loginButton)
        loginButton.snp_makeConstraints { (make) in
            let _ = make.top.equalTo(solutionImgV.snp_bottom).offset(44)
            let _ = make.left.equalTo(solutionImgV.snp_left)
            let _ = make.right.equalTo(bgView.snp_right)
            let _ = make.height.equalTo(44)
        }
        
    }
}


//MARK:- 按钮点击事件
extension LoginViewController {
    @objc func closeBtnClick(){
        guard let keyW : UIWindow = (UIApplication.shared.delegate?.window)! else {  return }
        
        UIView.animate(withDuration: 1, animations: {
            keyW.alpha = 0
            keyW.frame = CGRect(x: 0, y: keyW.bounds.size.width, width: 0, height: 0)
        }) { (finished) in
            exit(0)
        }
        
    }
    
    @objc func forgetButtonClick() {
    
        print("忘记密码")
    }
    
    
    @objc func loginButtonClick() {
    
        print("登陆")
    }
    
}


