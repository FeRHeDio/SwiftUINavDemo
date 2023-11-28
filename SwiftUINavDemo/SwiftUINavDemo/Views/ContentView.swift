//
//  ContentView.swift
//  SwiftUINavDemo
//
//  Created by Fernando Putallaz on 13/11/2023.
//

import SwiftUI

struct ContentView: View {
  var pets = PetsViewModel()
  
  @Environment(AppRouter.self) private var router
  
  var body: some View {
    @Bindable var router = router
    
    NavigationStack(path: $router.pets) {
      PetsRootView(pets: pets)
        .navigationTitle("Pets World")
        .navigationDestination(for: AppRouter.Route.self) { screen in
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
