//
//  UserTasksTests.swift
//  UserTasksTests
//
//  Created by ignasiperez.com on 23/04/2021.
//

import XCTest
@testable import UserTasks

class UserTasksTests: XCTestCase {
  
  override func setUp() {}
  
  override func tearDown() {}
  
  
  
  // MARK: - Creation Methods / Setup helpers
  
  func createTestUser(projects: Int, itemsPerProject: Int) -> User {
    var user = User(name: "Taylor Swift")
    XCTAssertEqual(user.projects.count, 0)
    
    for album in 1...projects {
      var project = Project(name: "Album #\(album)")
      XCTAssertEqual(project.items.count, 0)
      user.addProject(project)
      
      for song in 1...itemsPerProject {
        let item = ToDoItem(name: "Write song #\(song)")
        project.addItem(item)
      }
      
    }
    return user
  }
  
  
  
  // MARK: - Tests
  
  func testItemIsWrittenInPlural() {
    // GIVEN
    let sut = createTestUser(projects: 3, itemsPerProject: 10)
    
    
    // WHEN
    let rowTitle = sut.outstandingTasksString
    
    
    // THEN
    XCTAssertEqual(rowTitle, "30 items")
  }
  
}
