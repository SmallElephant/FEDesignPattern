//
//  StudyManager.swift
//  1-Singleton
//
//  Created by keso on 2017/4/16.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

let sharedData = StudyManager()

class StudyManager {
    
    static let sharedInstance:StudyManager = StudyManager()
    
    class var shared: StudyManager {
        return sharedData
    }
}
