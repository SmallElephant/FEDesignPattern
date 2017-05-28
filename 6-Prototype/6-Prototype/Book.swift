//
//  Book.swift
//  6-Prototype
//
//  Created by keso on 2017/5/28.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Book:Product {
    
    var name:String?
    
    var price:Float = 0.0
    
    override func clone() -> AnyObject? {
        
        let book:Book = Book()
        book.name = self.name
        book.price = self.price
        return book
    }
}
