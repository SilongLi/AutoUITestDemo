//
//  LoginViewController.swift
//  AutoUITestDemo
//
//  Created by lisilong on 2018/6/13.
//  Copyright © 2018年 lisilong. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.accessibilityLabel = "login_page"
        view.backgroundColor = .yellow

        let info = UILabel(frame: self.view.bounds)
        info.text = "登录界面"
        info.font = UIFont.systemFont(ofSize: 20)
        info.textColor = .red
        info.textAlignment = .center
        view.addSubview(info)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
