//
//  Flyweight.swift
//  16-FlyweightPattern
//
//  Created by keso on 2017/6/18.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Flyweight {
    
    var name:String = ""
    
    convenience init(name:String) {
        self.init()
        self.name = name
    }
    
    func operation(action:String) { }
    
}

class LetterFlyweight:Flyweight {
    
    override func operation(action: String) {
        print("\(self.name)---执行操作:\(action)")
    }
    
}
