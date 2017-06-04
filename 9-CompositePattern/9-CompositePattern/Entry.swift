//
//  Entry.swift
//  9-CompositePattern
//
//  Created by keso on 2017/6/4.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Entry {
    
    var parent:Directory?
    var name:String?
    
    convenience init(name:String,parent:Directory?) {
        self.init()
        self.name = name
        self.parent = parent
    }
    
    func addEntry(entry:Entry) {}
    
    func deleteEntry(entry:Entry) {}
    
    func printnEntry() {}
    
    func printEntry(prefix:String) {}
    
}
