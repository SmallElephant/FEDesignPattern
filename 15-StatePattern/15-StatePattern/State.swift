//
//  State.swift
//  15-StatePattern
//
//  Created by FlyElephant on 2017/6/14.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class State {
    
    var context:Context?
    
    func handle() { }
    
    func innerHandle(day:Int,context:Context) { }
    
}


class BuyState: State {
    
    
    override func handle() {
        print("正在通知快递公司取件")
    }
    
    
    override func innerHandle(day: Int, context: Context) {
        
        var state:State = self
        if day <= 1 {
            self.context = context
        } else if day <= 3 {
            state = SendState()
            state.context = context
        } else {
            state = ReceiveState()
            state.context = context
        }
        state.handle()
    }
    
}

class SendState: State {
    
    override func handle() {
        print("商品正在运送途中")
    }
    
}

class ReceiveState: State {
    
    override func handle() {
        print("已收货")
    }
    
}
