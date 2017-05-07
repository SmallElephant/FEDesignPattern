//
//  ViewController.swift
//  1-Singleton
//
//  Created by keso on 2017/4/16.
//  Copyright © 2017年 FlyElephant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let student1:StudyManager = StudyManager.sharedInstance
        
        let student2:StudyManager = StudyManager.sharedInstance
        
        print("\(address(o: student1))---\(address(o: student2))")
        
        let stu1 = StudyManager.shared
        let stu2 = StudyManager.shared
        print("单例:\(address(o: stu1))---\(address(o: stu2))")
        
        //print(Unmanaged.passUnretained(student1).toOpaque())
    }

    func address<T: AnyObject>(o: T) -> String {
        return String.init(format: "%018p", unsafeBitCast(o, to: Int.self))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

