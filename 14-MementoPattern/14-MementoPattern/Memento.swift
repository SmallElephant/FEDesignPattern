//
//  Memento.swift
//  14-MementoPattern
//
//  Created by FlyElephant on 2017/6/14.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Memento {
    
    var pattern:String = ""
    
    var progress:Float = 0
    
    convenience init(pattern:String,progress:Float) {
        self.init()
        self.pattern = pattern
        self.progress = progress
    }
    
}
