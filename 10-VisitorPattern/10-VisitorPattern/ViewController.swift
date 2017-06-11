//
//  ViewController.swift
//  10-VisitorPattern
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
        
        let boss:Boss = Boss()
        let employee:Employee = Employee()
        
        let houseVisitor:PlaceVisitor = HouseVisitor()
        let officeVisitor:PlaceVisitor = OfficeVisitor()
        
        boss.accept(visitor: houseVisitor)
        employee.accept(visitor: houseVisitor)
        
        boss.accept(visitor: officeVisitor)
        employee.accept(visitor: officeVisitor)
    }
}

