//
//  ViewController.swift
//  16-FlyweightPattern
//
//  Created by keso on 2017/6/18.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUp()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setUp() {
        
        let factory:FlyweightFactory = FlyweightFactory()
        
        factory.create(key: "A")
        factory.create(key: "B")
        
        factory.opration(key: "A", action: "共享字母A")
    }


}

