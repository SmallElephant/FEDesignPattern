//
//  ObserverCenter.swift
//  2-ObserverPattern
//
//  Created by keso on 2017/5/7.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class ObserverCenter {
    
    var observerMap:[String:Observer] = [:]
    
    func addObserver(observerName:String,observer:Observer) {
        observerMap[observerName] = observer
    }
    
    func deleteObserver(observerName:String) {
        observerMap.removeValue(forKey: observerName)
    }
    
    func notifyData(data:String) {
        
        for (_,value) in observerMap {
            let observer:Observer = value
            observer.updateData(data: data)
        }
        
    }
}
