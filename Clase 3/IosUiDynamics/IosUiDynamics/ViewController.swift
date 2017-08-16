//
//  ViewController.swift
//  IosUiDynamics
//
//  Created by Fernando Lopez Llanos on 8/16/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var animator:UIDynamicAnimator!
    var snapBehaviour:UISnapBehavior!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userHasTapped))
        self.view.addGestureRecognizer(tapGesture)
        animator = UIDynamicAnimator(referenceView: self.view)
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func userHasTapped(tap:UITapGestureRecognizer) {
        let touchPoint = tap.location(in: self.view)
        if snapBehaviour != nil{
            animator.removeBehavior(snapBehaviour)
        }
        snapBehaviour = UISnapBehavior(item: imageView, snapTo: touchPoint)
        snapBehaviour.damping = 0.3
        animator.addBehavior(snapBehaviour)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

