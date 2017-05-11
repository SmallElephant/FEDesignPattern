//
//  ViewController.swift
//  3-CommandPattern
//
//  Created by FlyElephant on 2017/5/10.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var person:Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setUp()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func executeAction(_ sender: UIButton) {
        self.person?.executeCommand(index: 0)
    }
    
    @IBAction func cancelAction(_ sender: UIButton) {
        self.person?.undoCommand(index: 0)
        print("简书---FlyElephant")
    }
    

    func setUp() {
        
        let machine:WashMachine = WashMachine()
        let washCommand:WashCommand = WashCommand(machine: machine)
        
        self.person = Person()
        self.person?.addCommand(command: washCommand)
    }

}

