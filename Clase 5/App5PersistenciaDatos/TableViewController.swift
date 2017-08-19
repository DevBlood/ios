//
//  TableViewController.swift
//  App5PersistenciaDatos
//
//  Created by Fernando Lopez Llanos on 8/18/17.
//  Copyright © 2017 Fernando Lopez Llanos. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {

    var managedObjects:[NSManagedObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let managedContext = appDelegate!.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Lista")
        
        do {
            managedObjects = try managedContext.fetch(fetchRequest)
        } catch let error as NSError{
            print ("No pude recuperar los datos guardados. El error fue: \(error), \(error.userInfo)")
        }
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return managedObjects.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let managedObject = managedObjects[indexPath.row]
        cell.textLabel?.text = managedObject.value(forKey: "palabra") as? String
        
        return cell
    }
    
    @IBAction func agregarPalabras(_ sender: Any){
        
        let alerta = UIAlertController(title: "Nueva Palabra", message: "Agregar Palabra Nueva", preferredStyle: .alert)
        
        let guardar = UIAlertAction(title: "Agregar", style: .default, handler:{
            
            (action:UIAlertAction) -> Void in
            
            let textField = alerta.textFields!.first
            self.guardarPalabra(palabra: textField!.text!)
            self.tableView.reloadData()
        })
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .default){
            (action:UIAlertAction) -> Void in}
        
        alerta.addTextField{(textField:UITextField) -> Void in}
        
        alerta.addAction(guardar)
        alerta.addAction(cancelar)
        
        present(alerta, animated:true, completion: nil)
        
    }
    
    func guardarPalabra(palabra:String){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let managedContext = appDelegate!.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Lista", in: managedContext)!
        let managedObject = NSManagedObject(entity: entity, insertInto: managedContext)
        
        managedObject.setValue(palabra, forKeyPath: "palabra")
        
        do {
            try managedContext.save()
            managedObjects.append(managedObject)
        } catch let error as NSError {
            print("No se pudo guardar, error: \(error.userInfo)")
        }
    }

}
