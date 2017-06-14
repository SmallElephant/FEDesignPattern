//
//  ViewController.swift
//  13-MediatorPattern
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
        
        let colleagueA:ColleagueA = ColleagueA()
        let colleagueB:ColleagueB = ColleagueB()
        colleagueA.cashMoney = 100
        colleagueB.cashMoney = 100
        
        print("A当前现金:\(colleagueA.cashMoney)---B当前的现金:\(colleagueB.cashMoney)")
        
        let mediator:LeaderMediator = LeaderMediator(a: colleagueA, b: colleagueB)
        colleagueA.mediator = mediator
        colleagueB.mediator = mediator
        
        colleagueA.winMoneyFromB(money: 20)
        
        print("A当前现金:\(colleagueA.cashMoney)---B当前的现金:\(colleagueB.cashMoney)")
        
        colleagueB.winMoneyFromA(money: 50)
        
        print("A当前现金:\(colleagueA.cashMoney)---B当前的现金:\(colleagueB.cashMoney)")
    }
}

