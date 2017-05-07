//
//  ViewController.swift
//  FEDesignPattern
//
//  Created by keso on 2017/4/23.
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
    
    // Mark: SetUp
    
    func setUp() {
        
        let adapter:AdapterTarget = Adapter()
        adapter.request()
        
        let animation:TemplateAnimation = CustomAnimation()
        animation.showAnimation()
    }

}

