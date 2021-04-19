//
//  Hater.swift
//  First
//
//  Created by ignasiperez.com on 19/04/2021.
//

import Foundation

struct Hater {
  var hating = false
  
  mutating func hadABadDay() {
    hating = true
  }
  
  mutating func hadAGoodDay() {
    hating = false
  }
}
