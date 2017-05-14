//
//  ViewController.swift
//  3-FactoryPattern
//
//  Created by keso on 2017/5/14.
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
        
        let audioFactory:Factory = AudioFactory()
        let vedioFactory:Factory = VedioFactory()
        
        let audioProcut:Product? = audioFactory.create(name: "童话镇")
        let vedioProduct:Product? = vedioFactory.create(name: "摔跤吧，爸爸")
        
        audioProcut?.play()
        vedioProduct?.play()
    }


}

