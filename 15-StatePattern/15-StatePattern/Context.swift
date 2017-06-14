//
//  Context.swift
//  15-StatePattern
//
//  Created by FlyElephant on 2017/6/14.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Context {
    
    var state:State?
    
    func request(day:Int) {
        
        if day <= 1 {
            self.state = BuyState()
        } else if day  <= 3 {
            self.state = SendState()
        } else {
            self.state = ReceiveState()
        }
        
        self.state?.handle()
    }
    
    func request2(day:Int) {
        
        self.state = BuyState()
        self.state?.innerHandle(day: day, context: self)
    }
    
}
