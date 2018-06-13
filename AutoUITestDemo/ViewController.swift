//
//  ViewController.swift
//  AutoUITestDemo
//
//  Created by lisilong on 2018/6/13.
//  Copyright © 2018年 lisilong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(image: #imageLiteral(resourceName: "index.png"))
        imageView.frame = self.view.bounds
        view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

