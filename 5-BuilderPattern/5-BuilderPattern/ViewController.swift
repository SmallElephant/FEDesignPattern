//
//  ViewController.swift
//  5-BuilderPattern
//
//  Created by keso on 2017/5/28.
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


    func setUp() {
        
        let webBuilder:Builder = WebBuilder()
        
        var director:Director = Director(builder: webBuilder)
        
        director.construct()
        
        let mobileBuilder:Builder = MobileBuilder()
        
        director = Director(builder: mobileBuilder)
        
        director.construct()
    }
}

