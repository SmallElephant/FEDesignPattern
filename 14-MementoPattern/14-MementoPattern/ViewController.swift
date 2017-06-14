//
//  ViewController.swift
//  14-MementoPattern
//
//  Created by FlyElephant on 2017/6/14.
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
        
        let game:Game = Game()
        game.progress = 0.2
        game.pattern = "1V1"
        game.time = 2500
        
        print("当前游戏的模式:\(game.pattern)---游戏的进度:\(game.progress)")
        
        let caretaker:Caretaker = Caretaker()
        caretaker.memento = game.saveMemento()
        
        game.progress = 0.5
        
        print("当前游戏的模式:\(game.pattern)---游戏的进度:\(game.progress)")
        
        print("备份游戏的模式:\(caretaker.memento!.pattern)---游戏的进度:\(caretaker.memento!.progress)")
        
    }
}

