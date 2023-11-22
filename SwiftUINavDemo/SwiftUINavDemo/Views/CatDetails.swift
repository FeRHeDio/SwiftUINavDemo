//
//  CatDetails.swift
//  SwiftUINavDemo
//
//  Created by Fernando Putallaz on 22/11/2023.
//

import SwiftUI

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
  CatDetails(cat: CatsViewModel().cats.randomElement()!)
}

