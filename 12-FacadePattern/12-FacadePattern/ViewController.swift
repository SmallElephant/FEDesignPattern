//
//  ViewController.swift
//  12-FacadePattern
//
//  Created by FlyElephant on 2017/6/12.
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
        
        let facade:Facade = Facade()
        facade.work()
    }

}

