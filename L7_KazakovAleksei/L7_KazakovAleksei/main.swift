//
//  main.swift
//  L7_KazakovAleksei
//
//  Created by Алексей Казаков on 12/12/2018.
//  Copyright © 2018 Алексей Казаков. All rights reserved.
//

import Foundation

var testCar = Conveyor()
//do {
//    _ = try testCar.connectWheels(connectingWheelsAmount: 43)
//    print(testCar.wheels)
//} catch ConveyorError.wrongWheelsAmount {
//    print("Тест ошибки")
//}

func test (car: Conveyor, wheels: Int) -> Conveyor {
    let someCar = car
    do {
        _ = try someCar.connectWheels(connectingWheelsAmount: wheels)
        print(someCar.wheels)
    } catch ConveyorError.wrongWheelsAmount {
        print("Тест ошибки")
    } catch let error {
        print(error.localizedDescription)
    }
    return someCar
}

testCar = test(car: testCar, wheels: 4)
print(testCar.wheels)
