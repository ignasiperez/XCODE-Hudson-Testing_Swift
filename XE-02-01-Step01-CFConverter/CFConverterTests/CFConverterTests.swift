//
//  CFConverterTests.swift
//  CFConverterTests
//
//  Created by ignasiperez.com on 23/04/2021.
//

import XCTest
@testable import CFConverter

class CFConverterTests: XCTestCase {
  
  override func setUpWithError() throws {
    continueAfterFailure = false
  }
  
  override func tearDownWithError() throws {

  }
  

  func testFahrenheitToCelsius() {
    let sut = Converter()

//    let input1 = 30.0
    let input1 = 32.0
    let output1 = sut.convertToCelsius(fahrenheit: input1)
    XCTAssertEqual(output1, 0)

//    let input2 = 210.0
    let input2 = 212.0
    let output2 = sut.convertToCelsius(fahrenheit: input2)
    XCTAssertEqual(output2, 100)
  }

  
}
