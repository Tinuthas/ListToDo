//
//  ToDoItem.swift
//  ListToDo
//
//  Created by Marcus Vinicius Galdino Medeiros on 23/11/19.
//  Copyright © 2019 Marcus Vinicius Galdino Medeiros. All rights reserved.
//

import Foundation
import CoreData
public class ToDoItem :NSManagedObject, Identifiable{
    
    @NSManaged public var createdAt:Date?
    @NSManaged public var title:String?

}

extension ToDoItem{
    static func getAllToDoItems() -> NSFetchRequest<ToDoItem>{
        let request: NSFetchRequest<ToDoItem> = ToDoItem.fetchRequest() as! NSFetchRequest<ToDoItem>
        
        let sortDescription = NSSortDescriptor(key:"createdAt", ascending:true)
        request.sortDescriptors = [sortDescription]
        return request
    }
}
