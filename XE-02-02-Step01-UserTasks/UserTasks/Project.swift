//
//  Project.swift
//  UserTasks
//
//  Created by ignasiperez.com on 23/04/2021.
//

import Foundation


struct Project {
  var name: String
  var items: [ToDoItem] = []
  
  
  init(name: String, items: [ToDoItem] = []) {
    self.name = name
  }
  
  
  mutating func addItem(_ item: ToDoItem) {
    items.append(item)
  }
}
