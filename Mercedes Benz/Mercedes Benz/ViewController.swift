//
//  ViewController.swift
//  Mercedes Benz
//
//  Created by Fernando Lopez Llanos on 8/14/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto1: UILabel!
    
    @IBOutlet weak var texto2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func branding(_ sender: Any) {
        texto1.text = "Mercedes Benz"
    }
    
    
    @IBAction func color(_ sender: Any) {
        texto2.text = "Azul"
        texto2.textColor = UIColor(red: 0.0, green: 0.0, blue: 2.0, alpha: 1.0)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

