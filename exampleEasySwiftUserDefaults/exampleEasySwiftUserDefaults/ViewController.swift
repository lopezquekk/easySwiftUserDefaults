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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        ESDefaults.set(key: "Prueba", value: "Prueba")
        ESDefaults.set(key: "Prueba", value: "Prueba")
        ESDefaults.set(key: "Prueba", value: "Prueba")
        ESDefaults.set(key: "Prueba", value: "Prueba")
    }
}
