//
//  ContentView.swift
//  SwiftUINavDemo
//
//  Created by Fernando Putallaz on 13/11/2023.
//

import SwiftUI

struct ContentView: View {
  let dogVM = DogViewModel()

  var body: some View {
    NavigationView {
      List(dogVM.dogs) { dog in
        NavigationLink {
          DogDetails(dog: dog)
        } label: {
          Label(dog.name, systemImage: "heart")
        }
      }
      .navigationTitle("Dogs World")
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
