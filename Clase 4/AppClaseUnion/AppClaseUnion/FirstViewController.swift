//
//  FirstViewController.swift
//  AppClaseUnion
//
//  Created by Fernando Lopez Llanos on 8/17/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var rotar: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    var animator:UIDynamicAnimator!
    var snapBehaviour:UISnapBehavior!
    var box: UIView?
    
    @IBAction func rotar(_ sender: Any) {
        UIView.animate(withDuration: 2.0, animations: {
            self.imageView.transform =
                CGAffineTransform(rotationAngle: CGFloat.pi)
            self.imageView.transform = CGAffineTransform(translationX: 10, y: 20)
        })
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userHasTapped))
        self.view.addGestureRecognizer(tapGesture)
        animator = UIDynamicAnimator(referenceView: self.view)
        
        //let frameRect = CGRect(x: 10, y: 20, width: 40, height: 40)
        let frameRect = CGRect(x: 50, y: 200, width: 40, height: 40)
        box = UIView(frame: frameRect)
        box?.backgroundColor = UIColor.black
        
        self.view.addSubview(box!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

}

