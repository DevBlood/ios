//
//  ViewController.swift
//  AppCicloDeVida
//
//  Created by Fernando Lopez Llanos on 8/17/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
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
    }
    
    override func loadView() {
        super.loadView()
        print("SeActivo la func loadView")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("SeActivo la func viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        super.viewDidAppear(true)
        print("SeActivo la func viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("SeActivo la func viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("SeActivo la func viewDidDisappear")
    }

}

