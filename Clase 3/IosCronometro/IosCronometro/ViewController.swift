//
//  ViewController.swift
//  IosCronometro
//
//  Created by Fernando Lopez Llanos on 8/16/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    var count = 0.0
    var timer = Timer()
    var isRunning = false


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func StartTimer(_ sender: UIButton) {
        if isRunning {
            return
        }
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
    }
    @IBAction func StopTimer(_ sender: UIButton) {
        timer.invalidate()
        isRunning = false
    }
    @IBAction func ResetTimer(_ sender: UIButton) {
                timer.invalidate()
                isRunning = false
        count = 0.0
        timeLabel.text = String(count)
    }
    
    func UpdateTimer(){
        count += 0.1
        timeLabel.text = String(count)
    }
    
    
}

