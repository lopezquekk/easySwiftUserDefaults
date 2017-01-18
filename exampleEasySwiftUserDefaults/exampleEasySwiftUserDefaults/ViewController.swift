//
//  ViewController.swift
//  exampleEasySwiftUserDefaults
//
//  Created by Imac Webpro 2 on 13/01/17.
//  Copyright © 2017 webprogramo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ESDefaults.set(key: "Test", value: "String Testing")
        ESDefaults.set(key: "Test1", value: ["Array","Test"])
        ESDefaults.set(key: "Test2", value: 29)
        ESDefaults.set(key: "Test3", value: true)
        
        
        print(ESDefaults.getString(key: "Test"))
        print(ESDefaults.getStringArray(key: "Test1"))
        print(ESDefaults.getInt(key: "Test2"))
        print(ESDefaults.getBool(key: "Test3"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
}
