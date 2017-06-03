//
//  Strategy.swift
//  8-StrategyPattern
//
//  Created by keso on 2017/6/3.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Strategy {
    
    func saveData() {}
}

class DiskStrategy: Strategy {
    
    
    override func saveData() {
        print("FlyElephant---保存至磁盘中")
    }
    
}

class MemoryStategy: Strategy {
    
    override func saveData() {
        print("FlyElephant---保存至内存中")
    }
    
}
