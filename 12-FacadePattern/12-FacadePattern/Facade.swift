//
//  Facade.swift
//  12-FacadePattern
//
//  Created by FlyElephant on 2017/6/12.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class Facade {
    
    func work() {
        
        let cook:Cook = Cook()
        let service:Service = Service()
        
        cook.cook()
        service.server()
    }
    
}
