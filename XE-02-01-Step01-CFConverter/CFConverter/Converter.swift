//
//  Converter.swift
//  CFConverter
//
//  Created by ignasiperez.com on 23/04/2021.
//

import Foundation


struct Converter {
  
  func convertToCelsius(fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5 / 9
  }
  
}
