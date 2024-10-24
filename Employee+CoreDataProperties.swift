//
//  Employee+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Admin on 21/10/24.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    @NSManaged public var name: String?
    @NSManaged public var id: UUID?

}

extension Employee : Identifiable {

}
