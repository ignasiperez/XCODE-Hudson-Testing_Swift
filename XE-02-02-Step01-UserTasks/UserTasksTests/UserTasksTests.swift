//
//  UserTasksTests.swift
//  UserTasksTests
//
//  Created by ignasiperez.com on 23/04/2021.
//

import XCTest
@testable import UserTasks

class UserTasksTests: XCTestCase {
  
  override func setUp() {
    
  }
  
  override func tearDown() {
    
  }
  
  
  func testNumberOfItemsIs30() {
    // GIVEN
    var sut = User(name: "Taylor Swift")
    
    for album in 1...3 {
      var project = Project(name: "Album #\(album)")
      sut.addProject(project)
      
      for song in 1...10 {
        let item = ToDoItem(name: "Write song #\(song)")
        project.addItem(item)
      }
      
    }
    
    
    // WHEN
    let rowTitle = sut.outstandingTasksString
    
    
    // THEN
    XCTAssertEqual(rowTitle, "30 items")
  }
  
}
