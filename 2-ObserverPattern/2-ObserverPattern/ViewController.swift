//
//  ViewController.swift
//  2-ObserverPattern
//
//  Created by keso on 2017/5/7.
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
        
        let observerCenter:ObserverCenter = ObserverCenter()
        
        let courseObserver:CourseObserver = CourseObserver()
        observerCenter.addObserver(observerName: "Course", observer: courseObserver)
       
        let studentObserver:StudyObserver = StudyObserver()
        observerCenter.addObserver(observerName: "Student", observer: studentObserver)
        
        observerCenter.notifyData(data: "FlyElephant")
        
    }
}

