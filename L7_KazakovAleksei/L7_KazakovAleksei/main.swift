//
//  main.swift
//  L7_KazakovAleksei
//
//  Created by Алексей Казаков on 12/12/2018.
//  Copyright © 2018 Алексей Казаков. All rights reserved.
//

import Foundation

var testCar = Conveyor()

testCar = connectWheels(car: testCar, wheels: 3)
print(testCar.wheels)
testCar = connectWheels(car: testCar, wheels: 4)
print(testCar.wheels)

testCar = connectDoors(car: testCar, doors: 5)
print(testCar.doors)

testCar = connectDoors(car: testCar, doors: 4)
print(testCar.doors)

testCar = connectDoors(car: testCar, doors: 3)

testCar = connectEngine(car: testCar, engine: -1)
print(testCar.engine)

testCar = connectEngine(car: testCar, engine: 1)
print(testCar.engine)

testCar = connectEngine(car: testCar, engine: 1)
print(testCar.engine)

testCar = createVin(car: testCar, vin: "1111111111")

var testCarTwo = Conveyor()

testCarTwo = connectWheels(car: testCarTwo, wheels: 4)
testCarTwo = connectDoors(car: testCarTwo, doors: 4)
testCarTwo = connectEngine(car: testCarTwo, engine: 1)

print(Conveyor.wheelsAmount)
print(Conveyor.doorsAmount)
print(Conveyor.enginesAmount)
Conveyor.getSomeWheels(amount: 4)
Conveyor.getSomeDoors(amount: 8)
Conveyor.getSomeEngines(amount: 2)
print(Conveyor.wheelsAmount)
print(Conveyor.doorsAmount)
print(Conveyor.enginesAmount)
testCarTwo = connectWheels(car: testCarTwo, wheels: 4)
testCarTwo = connectDoors(car: testCarTwo, doors: 4)
testCarTwo = connectEngine(car: testCarTwo, engine: 1)
print(Conveyor.wheelsAmount)
print(Conveyor.doorsAmount)
print(Conveyor.enginesAmount)

testCarTwo = createVin(car: testCarTwo, vin: "1112111111")
print(testCarTwo.vin)
