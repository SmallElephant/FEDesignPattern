//
//  Product.swift
//  3-FactoryPattern
//
//  Created by keso on 2017/5/14.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Product {
    
    var productName:String?
    
    required init(name:String) {
        productName = name
    }
    
    func play() {}
}

class AudioProduct:Product {
    
    required init(name: String) {
        super.init(name: name)
    }
    
    override func play() {
        print("\(self.productName!)---音频播放")
    }
    
}

class VedioProruct:Product {
    
    required init(name: String) {
        super.init(name: name)
    }
    
    override func play() {
        print("\(self.productName!)---视频播放")
    }
}
