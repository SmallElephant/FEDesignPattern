//
//  FlyweightFactory.swift
//  16-FlyweightPattern
//
//  Created by keso on 2017/6/18.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class FlyweightFactory {
    
    var map = [String : Flyweight]()
    
    func create(key:String) {
        if !map.keys.contains(key) {
            map[key] = LetterFlyweight(name: key)
        }
    }
    
    
    func opration(key:String,action:String) {
        
        var weight:Flyweight?
        if map.keys.contains(key) {
            weight = map[key]
        } else {
            weight = LetterFlyweight(name: key)
        }
        weight?.operation(action: action)
    }
}
