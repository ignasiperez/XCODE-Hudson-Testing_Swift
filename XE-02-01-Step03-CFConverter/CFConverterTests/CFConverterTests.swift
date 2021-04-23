//
//  CFConverterTests.swift
//  CFConverterTests
//
//  Created by ignasiperez.com on 23/04/2021.
//

import XCTest
@testable import CFConverter

class CFConverterTests: XCTestCase {
  
  var sut: Converter!
  
  
  override func setUp() {
    sut = Converter()
  }
  
  
  override func tearDown() {
    sut = nil
  }
  
  
  func testFahrenheitToCelsius() {
    // GIVEN
//    let sut = Converter()
    let input1 = 32.0
    let input2 = 212.0
    
    // WHEN
    let output1 = sut.convertToCelsius(fahrenheit: input1)
    let output2 = sut.convertToCelsius(fahrenheit: input2)
    
    // THEN
    XCTAssertEqual(output1, 0)
    XCTAssertEqual(output2, 100)
  }
  
  
  func test32FahrenheitIsZeroCelsius() {
    // GIVEN
//    let sut = Converter()
    let input = 32.0
    
    // WHEN
    let output = sut.convertToCelsius(fahrenheit: input)
    
    // THEN
    XCTAssertEqual(output, 0)
  }
  
  
  func test212FahrenheitIs100Celsius() {
    // GIVEN
    let sut = Converter()
    let input = 212.0
    
    // WHEN
    let output = sut.convertToCelsius(fahrenheit: input)
    
    // THEN
    XCTAssertEqual(output, 100)
  }
  
}
