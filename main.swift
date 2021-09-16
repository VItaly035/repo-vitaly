//
//  main.swift
//  lesson3
//
//  Created by Виталий Воронцов on 15.09.2021.
//

import Foundation


enum engineState {
    case start, stop
}
enum windowState {
    case open, close
}
enum trunkState {
    case full, empty
}
struct someCar {
    let carName: String
    let model: String
    var color: String
    
    mutating func changeColor(changeColor:String){
        switch changeColor {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "yellow":
            self.color = "yellow"
        case "blue":
            self.color = "blue"
        default:
            break
        }
    }
let release: Int
var trunkVolume: Double {
    willSet {
        if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) &&     (newValue < trunkVolume) {
            let  space = trunkVolume - newValue
            print ("\(carName)\(model) trunk free: \(space)")
        }else {
            print("Input error or |(carName)\(model) trunke is full")
        }
    }
}
    var engineState: engineState {
        willSet {
            if newValue == .start {
                print ("\(carName)\(model) engine on")
            }else {
                print("\(carName)\(model) engine off")
            }
        }
    }
    var windowState: windowState {
        willSet {
            if newValue == .open {
                print("\(carName)\(model) window open")
            }else{
                print("\(carName)\(model) window close")
            }
        }
    }
    var trunkState: trunkState
    mutating func emptyTrunk() {
        self.trunkState = .empty
        print("\(carName)\(model) trunk empty")
    }
}
struct someTruck {
    let carName: String
    let model: String
    var color: String
    mutating func changeColor(c: String) {
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "yellow":
            self.color = "yellow"
        case "blue":
            self.color = "blue"
        default:
            print("error")
        }
    }
    let release: Int
    var bodyVolume: Double {
        willSet {
            if (trunkState == .empty) && (bodyVolume > 0) && (bodyVolume != 0) && (newValue < bodyVolume) {
                let space = bodyVolume - newValue
                print("\(carName)\(model) trunk free: \(space)")
            }else {
                print("Input error or \(carName)\(model) trunk full")
            }
        }
    }
    var engineState: engineState {
        willSet {
            if newValue == .start {
                print("\(carName)\(model) engine on")
            }else {
                print("\(carName)\(model) engine off")
            }
        }
    }
    var windowState: windowState {
        willSet {
            if newValue == .open {
                print("\(carName)\(model) window open")
            }else {
                print("\(carName)\(model) window close")
            }
        }
    }
    var trunkState: trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print("\(carName)\(model) tunck empty")
    }
}
var car1 = someCar(carName: "Toyota", model: "camry", color: "black", release: 2020, trunkVolume: 720.0, engineState: .stop, windowState: .close, trunkState: .full)
var car2 = someCar(carName: "BMW", model: "M8", color: "blue", release: 2019, trunkVolume: 480.0, engineState: .stop, windowState: .close, trunkState: .empty)

var truck1 = someTruck(carName: "Mercedes-Benz", model: "Actros", color: "white", release: 2015, bodyVolume: 1000.0, engineState: .start, windowState: .open, trunkState: .full)
var truck2 = someTruck(carName: "Volvo", model: "f10", color: "yellow", release: 2018, bodyVolume: 1300.0, engineState: .stop, windowState: .close, trunkState: .empty)

car1.engineState = .start
//car1.trunckVolume = 250.0
car1.changeColor(changeColor: "white")
//car2.trunckVolume = 900.0
//car2.emptytruck()
car2.trunkVolume = 67.2
car2.windowState = .close
truck1.engineState = .start
truck1.windowState = .open
truck2.engineState = .stop
truck2.bodyVolume = 33719

print ("Information about the first  \(car1.carName)\(car1.model), release: \(car1.release), color: \(String(describing: car1.color)), free trunkVolume: \(car1.trunkVolume), engine is \(car1.engineState)")

