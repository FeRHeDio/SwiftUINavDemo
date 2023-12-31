//
//  SwiftUINavDemoApp.swift
//  SwiftUINavDemo
//
//  Created by Fernando Putallaz on 13/11/2023.
//

import SwiftUI

@main
struct SwiftUINavDemoApp: App {
  @State private var router = AppRouter()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(router)
    }
  }
}
