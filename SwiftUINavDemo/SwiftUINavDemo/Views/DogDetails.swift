//
//  DogDetails.swift
//  SwiftUINavDemo
//
//  Created by Fernando Putallaz on 22/11/2023.
//

import SwiftUI

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

#Preview {
  DogDetails(dog: DogViewModel().dogs.randomElement()!)
}
