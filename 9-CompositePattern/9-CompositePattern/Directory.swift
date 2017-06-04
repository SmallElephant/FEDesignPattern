//
//  Directory.swift
//  9-CompositePattern
//
//  Created by keso on 2017/6/4.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Directory: Entry {
    
    var files = [File]()
    var dirs =  [Directory]()
    
    override func addEntry(entry: Entry) {
        if entry is File {
            files.append(entry as! File)
        } else {
            dirs.append(entry as! Directory)
        }
    }
    
     override func deleteEntry(entry:Entry) {
        
        if entry is File {
            for i in 0..<files.count {
                if entry.name == files[i].name {
                    files.remove(at: i)
                }
            }
        } else {
            for i in 0..<dirs.count {
                if entry.name == dirs[i].name {
                    dirs.remove(at: i)
                }
            }
        }
    }
    
    override func printnEntry() {
        
        for file in files {
            file.printnEntry()
        }
        
        for dir in dirs {
            for file in dir.files {
                file.printEntry(prefix: self.name!)
            }
        }
    }
    
}
