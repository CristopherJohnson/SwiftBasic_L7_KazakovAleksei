//
//  main.swift
//  L7_KazakovAleksei
//
//  Created by Алексей Казаков on 12/12/2018.
//  Copyright © 2018 Алексей Казаков. All rights reserved.
//

import Foundation

print("=================== Машина №1 ===================")

var testCar = Conveyor()

print("=================== Присоединяем колеса ===================")

testCar = connectWheels(car: testCar, wheels: 3)
print(testCar)
testCar = connectWheels(car: testCar, wheels: 4)
print(testCar)

print("=================== Присоединяем двери ====================")

testCar = connectDoors(car: testCar, doors: 5)
print(testCar)

testCar = connectDoors(car: testCar, doors: 4)
print(testCar)

testCar = connectDoors(car: testCar, doors: 3)

print("=================== Присоединяем двигатель ================")

testCar = connectEngine(car: testCar, engine: -1)
print(testCar)

testCar = connectEngine(car: testCar, engine: 1)
print(testCar)

testCar = connectEngine(car: testCar, engine: 1)
print(testCar)

print("=================== Присваиваем vin ================")

testCar = createVin(car: testCar, vin: "11111222")
print(testCar)
testCar = createVin(car: testCar, vin: "1111111111")
print(testCar)
testCar = createVin(car: testCar, vin: "111")
print(testCar)


print("=================== Машина №2 ===================")

var testCarTwo = Conveyor()

print("=================== Пытаемся создать вторую машину ================")

testCarTwo = connectWheels(car: testCarTwo, wheels: 4)
print(testCarTwo)
testCarTwo = connectDoors(car: testCarTwo, doors: 4)
print(testCarTwo)
testCarTwo = connectEngine(car: testCarTwo, engine: 1)
print(testCarTwo)
print("Количество колес на складе: \(Conveyor.wheelsAmount)")
print("Количество дверей на складе: \(Conveyor.doorsAmount)")
print("Количество двигателей на складе: \(Conveyor.enginesAmount)")

print("=================== Добавляем детали на склад ================")

Conveyor.getSomeWheels(amount: 4)
Conveyor.getSomeDoors(amount: 8)
Conveyor.getSomeEngines(amount: 2)
print("Количество колес на складе: \(Conveyor.wheelsAmount)")
print("Количество дверей на складе: \(Conveyor.doorsAmount)")
print("Количество двигателей на складе: \(Conveyor.enginesAmount)")

print("=================== Присоединяем колеса ===================")
testCarTwo = connectWheels(car: testCarTwo, wheels: 4)
print(testCarTwo)
print("=================== Присоединяем двери ====================")
testCarTwo = connectDoors(car: testCarTwo, doors: 4)
print(testCarTwo)
print("=================== Присоединяем двигатель ================")
testCarTwo = connectEngine(car: testCarTwo, engine: 1)
print(testCarTwo)
print("=================== Присваиваем vin ================")
testCarTwo = createVin(car: testCarTwo, vin: "1111111111")
testCarTwo = createVin(car: testCarTwo, vin: "1112111111")
print(testCarTwo)
