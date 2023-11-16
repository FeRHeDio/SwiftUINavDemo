//
//  ContentView.swift
//  SwiftUINavDemo
//
//  Created by Fernando Putallaz on 13/11/2023.
//

import SwiftUI

struct ContentView: View {
  @State var presentedDogs: [Dog] = []
  let dogVM = DogViewModel()

  var body: some View {
    NavigationStack(path: $presentedDogs) {
      List(dogVM.dogs) { dog in
        NavigationLink(dog.name, value: dog)
       }
      .navigationTitle("Dogs World")
      .navigationDestination(for: Dog.self) { dog in
        DogDetails(dog: dog)
      }
    }
  }
}

struct DogDetails: View {
  let dog: Dog
  
  var body: some View {
    Text(dog.name)
  }
}

#Preview {
  ContentView()
}
