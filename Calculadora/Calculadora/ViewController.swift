//
//  ViewController.swift
//  Calculadora
//
//  Created by Fernando Lopez Llanos on 8/14/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numero1: UITextField!
    
    @IBOutlet weak var Numero2: UITextField!
    
    var res:String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func Suma(_ sender: Any) {
        print("Suma")
    }
    
    
    @IBAction func Resta(_ sender: Any) {
    }
    
    
    @IBAction func Multi(_ sender: Any) {
    }
    
    
    @IBAction func Divi(_ sender: Any) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

