//
//  ViewController.swift
//  IOS10FadeMusicTutorial
//
//  Created by Fernando Lopez Llanos on 8/16/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit

// Librería que se usa para reproducir .mp3

import AVFoundation

class ViewController: UIViewController {
    
    // Crear variable1 Tipo
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
        
        guard let asset = NSDataAsset(name: "River of deceit") else
        { print("Error Loading Audio."); return }
        do {
            player = try AVAudioPlayer(data: asset.data)
        }catch {print("Error Playing Audio."); return}
        
        player.volume = 0
        player.numberOfLoops = -1
        player.play()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

