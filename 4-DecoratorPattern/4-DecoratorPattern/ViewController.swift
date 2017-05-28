//
//  ViewController.swift
//  4-DecoratorPattern
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
        
        let cake:Cake = BirthdayCake()
        cake.make()
        
        let cake2:Cake = ChocolateDecorator(cake: cake)
        cake2.make()
        
        let cake3:Cake = BlueberryDecorator(cake: cake)
        cake3.make()
        
        let cake4:Cake = BlueberryDecorator(cake: cake2)
        cake4.make()
        
        print("FlyElephant")
        
    }


}

