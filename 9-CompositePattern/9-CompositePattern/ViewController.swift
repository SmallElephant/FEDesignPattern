//
//  ViewController.swift
//  9-CompositePattern
//
//  Created by keso on 2017/6/4.
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
        
        // root/study/composite.Swift
        // root/study.html
        
        let rootDir:Directory = Directory(name: "root", parent: nil)
        
        let file:File = File(name: "study.html", parent: rootDir)
        let file2:File = File(name: "readme.txt", parent: rootDir)
        
        let studyDir:Directory = Directory(name: "study", parent: rootDir)
        let file3:File = File(name: "composite.swift", parent: studyDir)
        let file4:File = File(name: "study.project", parent: studyDir)
        
        rootDir.addEntry(entry: file)
        rootDir.addEntry(entry: file2)
        rootDir.addEntry(entry: studyDir)
        
        studyDir.addEntry(entry: file3)
        studyDir.addEntry(entry: file4)
    
        rootDir.printnEntry()
        
        print("FlyElephant---删除文件夹")
        rootDir.deleteEntry(entry:studyDir)
        rootDir.printnEntry()
        
        print("FlyElephant---删除文件")
        rootDir.deleteEntry(entry:file2)
        rootDir.printnEntry()
    }

}

