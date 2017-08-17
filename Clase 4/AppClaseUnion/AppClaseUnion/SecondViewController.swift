//
//  SecondViewController.swift
//  AppClaseUnion
//
//  Created by Fernando Lopez Llanos on 8/17/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var numero1: UITextField!
    
    @IBOutlet weak var Numero2: UITextField!
    
    var res:String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func Suma(_ sender: Any) {
        print("Suma")
    }
    
    
    @IBAction func Resta(_ sender: Any) {
        print("Resta")
    }
    
    
    @IBAction func Multi(_ sender: Any) {
        print("Multi")
    }
    
    
    @IBAction func Divi(_ sender: Any) {
        print("Division")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

