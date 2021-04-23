//
//  Converter.swift
//  CFConverter
//
//  Created by ignasiperez.com on 23/04/2021.
//

import Foundation


struct Converter {
  
  //  func convertToCelsius(fahrenheit: Double) -> Double {
  //    return (fahrenheit - 32) * 5 / 9
  //  }
  
  
  func convertToCelsius(fahrenheit: Double) -> Double {
    let fahrenheit = Measurement(value: fahrenheit,
                                 unit: UnitTemperature.fahrenheit)
    
    let celsius = fahrenheit.converted(to: .celsius)
    
    return celsius.value
  }
  
}
