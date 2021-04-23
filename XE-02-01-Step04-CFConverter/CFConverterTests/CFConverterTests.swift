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
  
  
  func test32FahrenheitIsZeroCelsius() {
    // GIVEN
    let input = 32.0
    
    // WHEN
    let output = sut.convertToCelsius(fahrenheit: input)
    
    // THEN
//    XCTAssertEqual(output, 0)
    XCTAssertEqual(output, 0, accuracy: 0.000001)
  }
  
  
  func test212FahrenheitIs100Celsius() {
    // GIVEN
    let sut = Converter()
    let input = 212.0
    
    // WHEN
    let output = sut.convertToCelsius(fahrenheit: input)
    
    // THEN
//    XCTAssertEqual(output, 100)
    XCTAssertEqual(output, 100, accuracy: 0.000001)
  }
  
  
  func test100FahrenheitIs37Celsius() {
    // GIVEN
    let input = 100.0
    
    // WHEN
    let output = sut.convertToCelsius(fahrenheit: input)
    
    // THEN
    XCTAssertEqual(output, 37.777777, accuracy: 0.000001)
  }

}
