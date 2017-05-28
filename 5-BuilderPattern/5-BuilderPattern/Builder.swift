//
//  Builder.swift
//  5-BuilderPattern
//
//  Created by keso on 2017/5/28.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Builder {
    
    func makeTop() { }
    
    func makeBody() { }
    
    func makeBottom() { }
    
}

class WebBuilder: Builder {
    
    override func makeTop() {
        print("FlyElephant---网页制作");
    }
    
    override func makeBody() {
        print("FlyElephant---<Html></Html>")
    }
    
    override func makeBottom() {
        print("FlyElephant----Footer")
    }
}

class MobileBuilder: Builder {
    
    override func makeTop() {
        print("FlyElephant---移动制作");
    }
    
    override func makeBody() {
        print("FlyElephant---UITableView")
    }
    
    override func makeBottom() {
        print("FlyElephant----tabBar")
    }
}



