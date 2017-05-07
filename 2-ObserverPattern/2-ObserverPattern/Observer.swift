//
//  Observer.swift
//  2-ObserverPattern
//
//  Created by keso on 2017/5/7.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Observer {
    
    func updateData(data:String) {}
}

class CourseObserver: Observer {
    
    override func updateData(data: String) {
          print("课程更新了---\(data)")
    }
    
}

class StudyObserver: Observer {

    override func updateData(data: String) {
          print("学习更新了---\(data)")
    }
}
