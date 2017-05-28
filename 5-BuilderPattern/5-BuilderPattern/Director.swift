//
//  Director.swift
//  5-BuilderPattern
//
//  Created by keso on 2017/5/28.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Director {
    
    var builder:Builder?
    
    convenience init(builder:Builder) {
        self.init()
        self.builder = builder
    }
    
    func construct() {
        
        self.builder?.makeTop()
        self.builder?.makeBody()
        self.builder?.makeBottom()
    }
    
}
