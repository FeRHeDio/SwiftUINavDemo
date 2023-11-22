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

struct PetsRootView: View {
  let pets: PetsViewModel
  
  var body: some View {
    ScrollView {
      LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]) {
        Section {
          ForEach(pets.dogs) { dog in
            NavigationLink(dog.name, value: Screen.dog(dog))
              .font(.title).fontWeight(.light)
          }
        } header: {
          HStack {
            Text("Dogs")
              .font(.title2).fontWeight(.bold)
            Spacer()
          }
          .padding(12)
          .background(Color.primary
            .colorInvert()
            .opacity(0.75))
        }
        
        Section {
          ForEach(pets.cats) { cat in
            NavigationLink(cat.name, value: Screen.cat(cat))
              .font(.title).fontWeight(.light)
          }
        } header: {
          HStack {
            Text("Cats")
              .font(.title2).fontWeight(.bold)
            Spacer()
            
          }
          .padding(12)
          .background(Color.primary
            .colorInvert()
            .opacity(0.75)
          )
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
      .font(.title).fontWeight(.bold)
  }
}

struct CatDetails: View {
  let cat: Cat
  
  init(cat: Cat) {
    self.cat = cat
    print("Cat is: \(cat)")
  }
  
  var body: some View {
    Text(cat.name)
      .font(.title).fontWeight(.bold)
  }
}

#Preview {
  ContentView()
}
