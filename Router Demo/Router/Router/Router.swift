//
//  Router.swift
//  Router
//
//  Created by Ezreal on 2020/6/19.
//  Copyright © 2020 STL. All rights reserved.
//

import UIKit

// MARK: - Router

public protocol Routable {
    /// 仅通用方法，例如：每个Module都需要一个无参入口
    func homeVC() -> UIViewController
}

public class Router {
    /// 路由单例
    static let shared: Router = Router()
    private init() {}
    /**
     全部模块路由静态对象
     如果出现Could not cast value of type 'Router.XRouter' to 'Router.XRoutable'错误提示
     说明ModuleX中未实现 extension Router: XRoutable {}
     */
    public static var a: ARoutable { shared as! ARoutable }
    public static var b: BRoutable { shared as! BRoutable }
    public static var c: CRoutable { shared as! CRoutable }
}

// MARK: - A(为方便集中展示，这里建议创建ARoutable.swift集中书写，每个模块对应一个文件)

public protocol ARoutable: Routable {/** ModuleA中的路由方法 */}

// MARK: - B

public protocol BRoutable: Routable {/** ModuleB中的路由方法 */}

// MARK: - C

public protocol CRoutable: Routable {/** ModuleC中的路由方法 */}
