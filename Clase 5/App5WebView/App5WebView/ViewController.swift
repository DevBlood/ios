//
//  ViewController.swift
//  App5WebView
//
//  Created by Fernando Lopez Llanos on 8/18/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let google = URL(string:"https://www.google.com/")
        
        webView.loadRequest(URLRequest(url:google!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

