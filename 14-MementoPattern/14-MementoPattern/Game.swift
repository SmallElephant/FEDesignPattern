//
//  Game.swift
//  14-MementoPattern
//
//  Created by FlyElephant on 2017/6/14.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Game {
    
    var time:Float = 0
    
    var pattern:String = ""
    
    var progress:Float = 0
    
    
    func saveMemento() -> Memento {
        return Memento(pattern: self.pattern, progress: self.progress)
    }
}
