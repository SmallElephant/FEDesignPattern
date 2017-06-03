//
//  Monitor.swift
//  7-BridgePattern
//
//  Created by keso on 2017/6/3.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Monitor {
    
    func showTemperature() { }
}

class TemperatureMonitor:Monitor {
    
    override func showTemperature() {
        print("FlyElephant---风和日丽，万里无云")
    }
    
}
