//
//  ViewController.swift
//  Router Demo
//
//  Created by Ezreal on 2020/6/19.
//  Copyright © 2020 STL. All rights reserved.
//

import UIKit
import Router

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        /// 主项目中通过Router访问A模块控制器
        navigationController?.pushViewController(Router.a.homeVC(), animated: true)
    }
}

