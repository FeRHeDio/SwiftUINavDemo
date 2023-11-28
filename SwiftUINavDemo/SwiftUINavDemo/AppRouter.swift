//
//  NavigationManager.swift
//  SwiftUINavDemo
//
//  Created by Fernando Putallaz on 22/11/2023.
//

import Foundation

@Observable
class AppRouter {
  var pets = [Route]()
  
  public enum Route: Hashable {
    case dog(Dog)
    case cat(Cat)
  }
}
