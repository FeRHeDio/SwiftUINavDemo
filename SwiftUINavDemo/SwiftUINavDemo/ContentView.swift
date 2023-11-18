//
//  ContentView.swift
//  SwiftUINavDemo
//
//  Created by Fernando Putallaz on 13/11/2023.
//

import SwiftUI

enum Screens: Hashable {
  case dog(Dog)
  case cat(Cat)
}

struct ContentView: View {
  @State var path: [Screens] = []
  
  let dogVM = DogViewModel()
  let catsVM = CatsViewModel()

  var body: some View {
    NavigationStack(path: $path) {
      List {
        Section("Dogs") {
          ForEach(dogVM.dogs.prefix(5)) { dog in
            NavigationLink(dog.name, value: Screens.dog(dog))
          }
        }
        
        
        Section("Cats") {
          ForEach(catsVM.cats.prefix(5)) { cat in
            NavigationLink(cat.name, value: Screens.cat(cat))
          }
          
        }
      }
      .navigationTitle("World of pets")
      .navigationDestination(for: Screens.self) { screen in
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

struct DogDetails: View {
  let dog: Dog
  
  init(dog: Dog) {
    self.dog = dog
    print("dog is: \(dog)")
  }
  
  var body: some View {
    Text(dog.name)
  }
}

struct CatDetails: View {
  let cat: Cat
  
  var body: some View {
    Text(cat.name)
  }
}

#Preview {
  ContentView()
}
