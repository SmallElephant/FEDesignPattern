//
//  Employee.swift
//  11-ResponsibilityPattern
//
//  Created by keso on 2017/6/11.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation


class Employee {
    
    var superior:Employee?
    
    func applyReimbursement(money:Float) { }
}

class Director: Employee { // 主管
    
    override func applyReimbursement(money: Float) {
        
        if money <= 0 {
            return
        }
        
        if money <= 200 {
            print("\(money)报销---主管同意")
        } else {
            self.superior?.applyReimbursement(money: money)
        }
    }
}

class TechnologyLeader: Employee { // 技术负责人
    
    override func applyReimbursement(money: Float) {
        if money <= 200 {
            return
        }
        
        if money > 200 && money < 1000 {
            print("\(money)报销---技术负责人同意")
        } else {
            self.superior?.applyReimbursement(money: money)
        }
    }
}
