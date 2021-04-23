//
//  User.swift
//  UserTasks
//
//  Created by ignasiperez.com on 23/04/2021.
//

import Foundation


struct User {
  var name: String
  var projects: [Project] = []
  
  var outstandingTasksString: String {
    get {
      return "30 items"
    }
  }
  
  
  init(name: String, projects: [Project] = []) {
    self.name = name
  }
  
  mutating func addProject(_ project: Project) {
    projects.append(project)
  }
  
}
