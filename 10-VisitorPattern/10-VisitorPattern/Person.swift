//
//  Place.swift
//  10-VisitorPattern
//
//  Created by keso on 2017/6/11.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation


class Person {
    
    func accept(visitor:PlaceVisitor) {}
}

class Boss:Person {
    
    override func accept(visitor: PlaceVisitor) {
         visitor.visitor(boss: self)
    }
    
}

class Employee:Person {
    
    override func accept(visitor: PlaceVisitor) {
        visitor.visitor(employee: self)
    }
    
}
