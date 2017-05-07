//
//  TemplateAnimation.swift
//  FEDesignPattern
//
//  Created by keso on 2017/4/23.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import Foundation

class TemplateAnimation {
    
    func showAnimation()  { }
    
}

class CustomAnimation: TemplateAnimation {
    
    
    override func showAnimation() {
        print("FlyElephant--实现自定义动画")
    }
    
}


