//
//  Colleague.swift
//  13-MediatorPattern
//
//  Created by FlyElephant on 2017/6/14.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Colleague {
    
    var mediator:LeaderMediator?
    
    var cashMoney:Float = 0
}

class ColleagueA:Colleague {
    
    func winMoneyFromB(money:Float) {
        self.mediator?.changeMoney(action: "ColleagueA", money: money)
    }
    
}

class ColleagueB:Colleague {
    
    func winMoneyFromA(money:Float) {
        self.mediator?.changeMoney(action: "ColleagueB", money: money)
    }
    
}
