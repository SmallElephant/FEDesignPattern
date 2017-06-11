//
//  Visitor.swift
//  10-VisitorPattern
//
//  Created by keso on 2017/6/11.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class PlaceVisitor {

    func visitor(boss:Boss) {}
    
    func visitor(employee:Employee) {}

}

class HouseVisitor:PlaceVisitor {

    override func visitor(boss: Boss) {
        print("老板在家埋头工作")
    }
    
    override func visitor(employee: Employee) {
        print("员工在家看电视聊天")
    }

}

class OfficeVisitor:PlaceVisitor {

    override func visitor(boss: Boss) {
        print("老板在办公室进行商务拓展")
    }
    
    override func visitor(employee: Employee) {
        print("员工在办公室认真工作")
    }

}
