//
//  AppDelegate.swift
//  AppCicloDeVida
//
//  Created by Fernando Lopez Llanos on 8/17/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    //Delegado es una clase que hace algo en nombre de otra clase
    
    //Appdelegate: una clase appdelegate es un lugar donde se manejan estados especiales de la clase UIApplication. Estos estados son parte del cicle de vida de la app en se, y se representan con varias funciones que son llamadas por ios automaticamente dentro de la clase appdelegate. La clase UIAppplication le "delega" la responsabilidad a la clase appdelegate de implementar dichas funciones.
    
    //Foregound = Primer plano, Estado activo
    //Background = Fondo, Estado oculto
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

