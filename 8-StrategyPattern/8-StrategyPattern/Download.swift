//
//  Download.swift
//  8-StrategyPattern
//
//  Created by keso on 2017/6/3.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation


class Download {
    
    var strategy:Strategy?
    
    init(strategy:Strategy) {
        self.strategy = strategy
    }
    
    func downloadFile() {
        print("FlyElephant---文件下载成功")
        self.strategy?.saveData()
    }
    
}
