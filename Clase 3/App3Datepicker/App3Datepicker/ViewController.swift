//
//  ViewController.swift
//  App3Datepicker
//
//  Created by Fernando Lopez Llanos on 8/16/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var datepicker: UIDatePicker!
    @IBOutlet weak var dateLabel:UILabel!

    @IBAction func datePickerChanged(_sender: Any){
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from:datepicker.date)
        dateLabel.text = strDate
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

