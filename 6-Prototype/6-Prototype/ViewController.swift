//
//  ViewController.swift
//  6-Prototype
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
        
        let book:Book = Book()
        book.name = "从入门到放弃"
        book.price = 25.0
        
        print("FlyElephant---原始对象:\(book.name!)---\(book.price)")
        let temp:Book = book.clone() as! Book
        print("FlyElephant---拷贝对象:\(temp.name!)---\(temp.price)")
    }

}

