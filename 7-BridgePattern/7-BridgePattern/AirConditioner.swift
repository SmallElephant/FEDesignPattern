//
//  AirConditioner.swift
//  7-BridgePattern
//
//  Created by keso on 2017/6/3.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class AirConditioner {
    
    var monitor:Monitor?
    
    init(monitor:Monitor) {
        self.monitor = monitor
    }
    
    func display() { }
}

class HaierAirConditioner: AirConditioner {
    
    override func display() {
        self.monitor?.showTemperature()
    }
    
}
