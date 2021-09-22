//
//  main.swift
//  Lesson 5
//
//  Created by Виталий Воронцов on 22.09.2021.
//

import Foundation

protocol Car {
    func canDrive() -> Bool
}
final class SportCar: Car {
    var wheels: Int
    var stateEngine: Bool
    var carName: String
    
    init(wheels: Int, stateEngine: Bool, carName: String) {
        self.wheels = wheels
        self.stateEngine = stateEngine
        self.carName = carName
    }

    func canDrive() -> Bool {
        if wheels != 4 {
            print("You have wrong numver of wheels")
            return false
        } else {
            print("You can go!")
            return true
        }
    }
}

final class Truck: Car {
    var maxFillTrunk: Int
    var fillTrunk: Int
    init(maxFillTrunk: Int, fillTrunk: Int) {
        self.maxFillTrunk = maxFillTrunk
        self.fillTrunk = fillTrunk
    }
   func differenceFill() {
    let dif = maxFillTrunk - fillTrunk
        print("You havent \(dif) kg. luggare")
    }
    func canDrive() -> Bool {
        if fillTrunk <= maxFillTrunk {
            print("You can drive")
            return true
        } else {
            print("You have too much luggage")
            return false
        }
    }
}

extension SportCar {
    func doesWorkCar() -> Bool {
        if stateEngine == true {
            print("Car is worked")
            return true
        } else {
            print("Turn on engine")
            return false
        }
    }
}

extension SportCar: CustomStringConvertible {
    var description: String {
        return String(describing: carName)
    }
}

let car1 = SportCar(wheels: 4, stateEngine: true, carName: "Lamborgini")
let car2 = SportCar(wheels: 3, stateEngine: false, carName: "Polaris")

print(car1.canDrive())
print(car1.stateEngine)
print(car1.carName)
print(car1.wheels)
print(car2.carName)
print(car2.stateEngine)
print(car2.doesWorkCar())
print(car2.wheels)


let truck1 = Truck(maxFillTrunk: 250, fillTrunk: 180)
let truck2 = Truck(maxFillTrunk: 150, fillTrunk: 200)

print(truck1.differenceFill())
print(truck1.canDrive())
print(truck2.canDrive())
