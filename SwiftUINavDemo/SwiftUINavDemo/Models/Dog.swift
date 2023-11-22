//
//  Dog.swift
//  SwiftUINavDemo
//
//  Created by Fernando Putallaz on 13/11/2023.
//

import Foundation

struct Dog: Identifiable, Hashable {
  var id = UUID()
  var name: String
}

struct DogViewModel {
  var dogs = [
    Dog(name: "Max"),
    Dog(name: "Buddy"),
    Dog(name: "Charlie"),
    Dog(name: "Rocky"),
    Dog(name: "Duke"),
    Dog(name: "Bear"),
    Dog(name: "Tucker"),
    Dog(name: "Jack"),
    Dog(name: "Toby"),
    Dog(name: "Cooper"),
    Dog(name: "Hunter"),
    Dog(name: "Sam"),
    Dog(name: "Milo"),
    Dog(name: "Buster"),
    Dog(name: "Bailey"),
    Dog(name: "Scout"),
    Dog(name: "Abby"),
    Dog(name: "Maggie"),
    Dog(name: "Leo"),
    Dog(name: "Lucy"),
    Dog(name: "Lola"),
    Dog(name: "Daisy"),
    Dog(name: "Molly"),
    Dog(name: "Sadie"),
    Dog(name: "Chloe"),
    Dog(name: "Sophie"),
    Dog(name: "Bella"),
    Dog(name: "Luna"),
    Dog(name: "Gracie"),
    Dog(name: "Ellie"),
    Dog(name: "Zoey")
  ]
}
