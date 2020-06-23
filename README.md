# 一个路由方案
### 综述：用于组件化项目中模块之间访问跳转所需控制器，属于静态路由。
### 整体思路：通过public Router提供所有模块访问，包含public protocol Routable + class Router，protocol用于申明各模块获取控制器对象方法和参数，Router用于提供模块通过extension Router: Routable{}来实现获取控制器对象方法，并能够通过Router来获取Routable对象来访问获取控制器对象方法。
```
graph LR
Project-->Main
Main-->AppDelegate.swift
Project-->Router
Router-->Router.swift
Project-->ModuleA
ModuleA-->ARouter.swift
Project-->ModuleB
ModuleB-->BRouter.swift
Project-->ModuleC
ModuleC-->CRouter.swift
```
```
Talk is cheap, show you my code.
```
```
// Router->Router.swift

/// 路由基协议
public protocol Routable {
    /// 仅通用方法，例如：每个Module都需要一个无参入口
    func homeVC() -> UIViewController
}

/// 路由基类
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

/// 为方便集中展示，这里建议创建ARoutable.swift集中书写，每个模块对应一个文件

public protocol ARoutable: Routable {/** ModuleA中的路由方法 */}

public protocol BRoutable: Routable {/** ModuleB中的路由方法 */}

public protocol CRoutable: Coutable {/** ModuleC中的路由方法 */}

```

```
// ModuleA->ARouter.swift

import Router

/// 实现ModuleA的路由协议
extension Router: ARoutable {}
```

```
// ModuleB->BRouter.swift

import Router

/// 实现ModuleB的路由协议
extension Router: BRoutable {}
```

```
// ModuleC->CRouter.swift

import Router

/// 实现ModuleC的路由协议
extension Router: CRoutable {}
```

```
// Main->AppDelegate.swift

/// 在主项目中，获取ModuleA中的控制器
let aHomeVC = Router.a.homeVC()
```

```
// ModuleA->ViewController.swift

/// 在ModuleA中，获取ModuleB中的控制器
let bHomeVC = Router.b.homeVC()
```






