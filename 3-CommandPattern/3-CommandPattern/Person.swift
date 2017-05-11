//
//  Person.swift
//  3-CommandPattern
//
//  Created by FlyElephant on 2017/5/10.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Person {
    
    var commands:[Command] = []
    
    func addCommand(command:Command) {
        commands.append(command)
    }
    
    func executeCommand(index:Int) {
        
        let command:Command? = commands[index]
        command?.execute()
    }
    
    func undoCommand(index:Int) {
        let command:Command? = commands[index]
        command?.undo()
    }
}
