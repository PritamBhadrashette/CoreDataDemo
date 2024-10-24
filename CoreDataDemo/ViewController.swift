//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Admin on 21/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        createEmployee()
        fetchEmployee()
    }


    func createEmployee(){
        let employee = Employee(context: PersistentStorage.shared.context)
        
        employee.name = "Pritam"
        employee.name = "Ash"
        PersistentStorage.shared.saveContext()
    }
    
    func fetchEmployee(){
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        debugPrint(path[0])
        do{
           guard let result = try PersistentStorage.shared.context.fetch(Employee.fetchRequest()) as? [Employee] else{return}
            result.forEach({debugPrint($0.name!)})
        }catch let error {
            debugPrint(error)
        }
        
        
    }
}

