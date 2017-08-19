//
//  ViewController.swift
//  jsonapp
//
//  Created by Fernando Lopez Llanos on 8/18/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var textField: UITextField!

    var palabra:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    @IBAction func buscar(_ sender: Any) {
        
            palabra = textField.text!
            let urlCompleto = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=\(palabra!)"
            
            let objetoUrl = URL(string:urlCompleto)
            
            let tarea = URLSession.shared.dataTask(with:objetoUrl!) {(datos, respuesta, error) in
                
                if error != nil{
                    print(error!)
                }else{
                    do{
                        
                        let json = try JSONSerialization.jsonObject(with: datos!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
                        print(json)
                        
                        let querySubjson = json["query"] as! [String:Any]
                        
                        let pagesSubJson = querySubjson["pages"] as! [String:Any]
                        
                        let IdSubJson = pagesSubJson["23599"] as! [String:Any]
                        
                        let extractStringHtml = IdSubJson["extract"] as! String
                        
                        DispatchQueue.main.sync(execute: {
                            self.webViewloadHTMLString(extractStringHtml, baseURL: nil)
                        })
                    } catch {
                        print("El procesamiento de Json tuvo un Error")
                    }
                }
            }
            
            tarea.resume()
        }

}

