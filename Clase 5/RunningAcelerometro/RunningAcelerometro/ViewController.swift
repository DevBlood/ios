//
//  ViewController.swift
//  RunningAcelerometro
//
//  Created by Fernando Lopez Llanos on 8/18/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    //Lazy es una tecnica para retrasar la creacion de un objeto o algun otro proceso care hasta que sea necesario
    lazy var motionManager = CMMotionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        if motionManager.isAccelerometerAvailable{
            _ = OperationQueue()
            motionManager.startAccelerometerUpdates(to: OperationQueue.main) { [weak self] (data: CMAccelerometerData?, error: Error?) in
                print ("x = \(data?.acceleration.x)")
                print ("y = \(data?.acceleration.y)")
                print ("z = \(data?.acceleration.z)")
            }
        }else{
            print("No hay Acelerometro")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

