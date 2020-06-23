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
        
        title = "A"
        view.backgroundColor = .red
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        /// A模块通过路由访问B模块控制器
        navigationController?.pushViewController(Router.b.homeVC(), animated: true)
    }
}

