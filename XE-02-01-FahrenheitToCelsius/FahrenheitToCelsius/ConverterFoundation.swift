//
//  ConverterFoundation.swift
//  FahrenheitToCelsius
//
//  Created by ignasiperez.com on 22/04/2021.
//

import Foundation


struct ConverterFoundation {
  
  func convertToCelsius(fahrenheit: Double) -> Double {
    let fahrenheit =
      Measurement(value: fahrenheit,
                  unit: UnitTemperature.fahrenheit)
    
    let celsius = fahrenheit.converted(to: .celsius)
    
    return celsius.value
  }
  
}


