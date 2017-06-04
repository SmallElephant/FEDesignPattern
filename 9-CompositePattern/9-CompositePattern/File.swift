//
//  File.swift
//  9-CompositePattern
//
//  Created by keso on 2017/6/4.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class File:Entry {
    
    
    override func printnEntry() {
        print("目录:\(String(describing: self.parent!.name!))/\(String(describing: self.name!))")
    }
    
    override func printEntry(prefix: String) {
         print("目录:\(prefix)/\(String(describing: self.parent!.name!))/\(String(describing: self.name!))")
    }
}
