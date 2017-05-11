//
//  Command.swift
//  3-CommandPattern
//
//  Created by FlyElephant on 2017/5/10.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Command {
    
    func execute() { }
    
    func undo() { }
    
}

class WashCommand: Command {
 
    var washMachine:WashMachine?
    
    convenience init(machine:WashMachine) {
        self.init()
        washMachine = machine
    }
    
    override func execute() {
        washMachine?.wash()
        washMachine?.dry()
    }
    
    override func undo() {
        washMachine?.unWash()
    }
    
}
