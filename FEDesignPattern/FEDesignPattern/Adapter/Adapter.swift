//
//  Adapter.swift
//  FEDesignPattern
//
//  Created by keso on 2017/4/23.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

// 适配器模式

class AdapterTarget {
    
    func request()  {
        
    }
}

class Adapter:AdapterTarget {
    
    lazy var adaptee:Adaptee = Adaptee()
    
    override func request() {
        
        adaptee.specificRequest()
    }
}

class Adaptee {
    
    func specificRequest()  {
        print("电脑接口")
    }
    
}
