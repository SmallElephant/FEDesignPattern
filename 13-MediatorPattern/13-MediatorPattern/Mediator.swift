//
//  Mediator.swift
//  13-MediatorPattern
//
//  Created by FlyElephant on 2017/6/14.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Mediator {
    
    var colleagueA:ColleagueA?
    
    var colleagueB:ColleagueB?
    
    convenience init(a:ColleagueA?,b:ColleagueB?) {
        self.init()
        colleagueA = a
        colleagueB = b
    }
    
    func changeMoney(action:String,money:Float) {}
}

class LeaderMediator:Mediator {
    
    override func changeMoney(action: String, money: Float) {
        if action == "ColleagueA" {
            self.colleagueA?.cashMoney += money
            self.colleagueB?.cashMoney -= money
        } else if action == "ColleagueB" {
            self.colleagueA?.cashMoney -= money
            self.colleagueB?.cashMoney += money
        }
    }
    
}
