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
    List(dogVM.dogs) { dog in
      Text(dog.name)
    }
  }
}

#Preview {
  ContentView()
}
