//
//  ViewController.swift
//  AppGestureLogin
//
//  Created by Fernando Lopez Llanos on 8/18/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboardwhenTappingAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension UIViewController{
    
    func hideKeyboardwhenTappingAround(){
        
        let tap : UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:    #selector(UIViewController.dismisskeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    func dismisskeyboard(){
        view.endEditing(true)
    }
    
}


