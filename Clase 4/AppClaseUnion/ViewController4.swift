//
//  ViewController4.swift
//  AppClaseUnion
//
//  Created by Fernando Lopez Llanos on 8/17/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController4: UIViewController {
    
    var player: AVAudioPlayer!
    
    @IBAction func fadeSwitchChanged(_ sender: UISwitch){
        if sender.isOn{
            player.setVolume(1, fadeDuration: 2)
        }else{
            player.setVolume(0, fadeDuration: 0)
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let asset = NSDataAsset(name: "05 - 1979") else
        { print("Error Loading Audio."); return }
        do {
            player = try AVAudioPlayer(data: asset.data)
        }catch {print("Error Playing Audio."); return}
        
        player.volume = 0
        player.numberOfLoops = -1
        player.play()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
