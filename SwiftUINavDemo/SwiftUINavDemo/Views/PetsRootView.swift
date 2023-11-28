//
//  PetsRootView.swift
//  SwiftUINavDemo
//
//  Created by Fernando Putallaz on 22/11/2023.
//

import SwiftUI

struct PetsRootView: View {
  let pets: PetsViewModel
  
  var body: some View {
    ScrollView {
      LazyVStack(spacing: 10, pinnedViews: [.sectionHeaders]) {
        Section {
          ForEach(pets.dogs) { dog in
            NavigationLink(dog.name, value: AppRouter.Route.dog(dog))
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
            NavigationLink(cat.name, value: AppRouter.Route.cat(cat))
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

#Preview {
  ContentView()
    .environment(AppRouter())
}
