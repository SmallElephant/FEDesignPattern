//
//  Factory.swift
//  3-FactoryPattern
//
//  Created by keso on 2017/5/14.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Factory {
    
    func create(name:String) -> Product? {
        return nil
    }
    
}

class AudioFactory:Factory {
    
    override func create(name: String) -> Product? {
        let product:AudioProduct = AudioProduct(name: name)
        return product
    }
    
}

class VedioFactory:Factory {
    
    override func create(name: String) -> Product? {
        let product:AudioProduct = AudioProduct(name: name)
        return product
    }
    
}
