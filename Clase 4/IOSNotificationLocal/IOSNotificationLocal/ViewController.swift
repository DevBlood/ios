//
//  ViewController.swift
//  IOSNotificationLocal
//
//  Created by Fernando Lopez Llanos on 8/17/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    @IBAction func sendNotification(_ sender: AnyObject){
        
    //Definir variable content
        let content = UNMutableNotificationContent()
        content.title = "Notificacion"
        content.subtitle = "from Caliente"
        content.body = "Notificaciones"
        
        //Definir la imagen
        let imageName = "applelogo"
        
        //Un guard nos permite realizar chequeos en el flujo de nuestro programa. Es como decir "para que el programa siga su ejecucion, necesita que esta condicion sea valida, de lo contrario, ejecuta el codigo en la clausula else.
        guard let imageURL = Bundle.main.url(forResource: imageName, withExtension: "png") else { return }
        
        let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
        
        content.attachments = [attachment]

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "notification.id.01", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]){(success, error) in
            if success{
                print("Success")
            } else{
                print("error")
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

