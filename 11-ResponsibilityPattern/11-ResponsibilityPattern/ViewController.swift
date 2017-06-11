//
//  ViewController.swift
//  11-ResponsibilityPattern
//
//  Created by keso on 2017/6/11.
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
        
        let director:Employee = Director()
        let leader:Employee = TechnologyLeader()
        
        director.superior = leader
        director.applyReimbursement(money: 300)
        
    }


}

