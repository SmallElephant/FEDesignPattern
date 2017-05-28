//
//  Decorator.swift
//  4-DecoratorPattern
//
//  Created by keso on 2017/5/28.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation


class FruitsDecorator: Cake {
    
    var cake:Cake?
    
    convenience init(cake:Cake) {
        self.init()
        self.cake = cake
    }
    
    override func cakeTypeName() -> String {
        return "水果"
    }
    
    override func make() {
        let name = cakeTypeName()
        print("\(name)---蛋糕制作成功")
    }
    
}

class ChocolateDecorator: FruitsDecorator {
    
    convenience init(cake:Cake) {
        self.init()
        self.cake = cake
    }
    
    override func cakeTypeName() -> String {
        let name:String = "巧克力" + self.cake!.cakeTypeName()
        return name
    }
}


class BlueberryDecorator: FruitsDecorator {
    
    convenience init(cake:Cake) {
        self.init()
        self.cake = cake
    }
    
    override func cakeTypeName() -> String {
        let name:String = "蓝莓" + self.cake!.cakeTypeName()
        return name
    }
    
}
