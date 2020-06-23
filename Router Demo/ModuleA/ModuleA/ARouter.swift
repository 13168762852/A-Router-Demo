//
//  Router.swift
//  ModuleA
//
//  Created by Ezreal on 2020/6/19.
//  Copyright © 2020 STL. All rights reserved.
//

import Router
import UIKit

extension Router: ARoutable {

    public func homeVC() -> UIViewController {
        return ViewController()
    }
}
