//
//  ViewController.swift
//  7-BridgePattern
//
//  Created by keso on 2017/6/3.
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
        
        let airConditioner:HaierAirConditioner = HaierAirConditioner(monitor: TemperatureMonitor())
        airConditioner.display()
    }

}

