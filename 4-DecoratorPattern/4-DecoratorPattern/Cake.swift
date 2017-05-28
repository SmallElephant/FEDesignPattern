//
//  Cake.swift
//  4-DecoratorPattern
//
//  Created by keso on 2017/5/28.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Cake {
    
    func cakeTypeName() -> String { return "" }
    
    func make() { }

}

class BirthdayCake: Cake {
    
    override func cakeTypeName() -> String {
        return "生日"
    }
    
    override func make() {
        let name = cakeTypeName()
        print("\(name)---蛋糕制作成功")
    }
}

