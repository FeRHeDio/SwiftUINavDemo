//
//  ContentView.swift
//  SwiftUINavDemo
//
//  Created by Fernando Putallaz on 13/11/2023.
//

import SwiftUI

enum Screen: Hashable {
  case dog(Dog)
  case cat(Cat)
}

struct ContentView: View {
  @State var presentedScreens: [Screen] = []
  var pets = PetsViewModel()
  
  var body: some View {
    NavigationStack(path: $presentedScreens) {
      PetsRootView(pets: pets)
        .navigationTitle("Pets World")
        .navigationDestination(for: Screen.self) { screen in
          switch screen {
          case .dog(let dog):
            DogDetails(dog: dog)
          case .cat(let cat):
            CatDetails(cat: cat)
          }
        }
    }
  }
}
