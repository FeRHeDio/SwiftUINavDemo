//
//  Cat.swift
//  SwiftUINavDemo
//
//  Created by Fernando Putallaz on 22/11/2023.
//

import Foundation

struct Cat: Identifiable, Hashable {
  var id = UUID()
  var name: String
}

struct CatsViewModel {
  var cats = [
    Cat(name: "Whiskers"),
    Cat(name: "Mittens"),
    Cat(name: "Shadow"),
    Cat(name: "Luna"),
    Cat(name: "Oliver"),
    Cat(name: "Cleo"),
    Cat(name: "Simba"),
    Cat(name: "Mocha"),
    Cat(name: "Bella"),
    Cat(name: "Tiger"),
    Cat(name: "Misty"),
    Cat(name: "Leo"),
    Cat(name: "Salem"),
    Cat(name: "Nala"),
    Cat(name: "Oreo"),
    Cat(name: "Charlie"),
    Cat(name: "Ziggy"),
    Cat(name: "Coco"),
    Cat(name: "Max"),
    Cat(name: "Lucy"),
    Cat(name: "Mittens"),
    Cat(name: "Shadow"),
    Cat(name: "Luna"),
    Cat(name: "Oliver"),
    Cat(name: "Cleo"),
    Cat(name: "Simba"),
    Cat(name: "Mocha"),
    Cat(name: "Bella"),
    Cat(name: "Tiger"),
    Cat(name: "Misty")
  ]
}
