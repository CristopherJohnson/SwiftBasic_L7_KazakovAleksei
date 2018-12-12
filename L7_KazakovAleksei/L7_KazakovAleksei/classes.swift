//
//  classes.swift
//  L7_KazakovAleksei
//
//  Created by Алексей Казаков on 12/12/2018.
//  Copyright © 2018 Алексей Казаков. All rights reserved.
//

import Foundation

class Conveyor: Carable {
    
    static var vinSet: Set<String> = []
    var wheels: Int = 0
    var engine: Bool = false
    var doors: Int = 0
    var vin: String = ""
    static var wheelsAmount: Int = 4
    static var enginesAmount: Int = 1
    static var doorsAmount: Int = 4
    
    func connectWheels (connectingWheelsAmount wheels: Int) throws -> Int {
        guard self.wheels < 4 else {
            throw ConveyorError.tooMuchWheels
        }
        
        guard wheels == 4 else {
            throw ConveyorError.wrongWheelsAmount
        }
        
        guard Conveyor.wheelsAmount > 0 else {
            throw ConveyorError.notEnoughWheels
        }
        
        Conveyor.wheelsAmount -= wheels
        self.wheels += wheels
        return self.wheels
    }
    
    func connectDoors (connectingDoorsAmount doors: Int) throws -> Int {
        guard self.doors < 4 else {
            throw ConveyorError.tooMuchDoors
        }
        
        guard doors == 4 else {
            throw ConveyorError.wrongDoorsAmount
        }
        
        guard Conveyor.doorsAmount > 0 else {
            throw ConveyorError.notEnoughDoors
        }
        
        Conveyor.doorsAmount -= doors
        self.doors += doors
        return self.doors
    }
    
    func connectEngine (connectingEngineAmount engine: Int) throws -> Bool {
        guard self.engine == false else {
            throw ConveyorError.engineIsAlreadyConnected
        }
        
        guard engine == 1 else {
            throw ConveyorError.wrongEnginesAmount
        }
        
        guard Conveyor.enginesAmount > 0 else {
            throw ConveyorError.notEnoughEngines
        }
        
        Conveyor.enginesAmount -= engine
        self.engine = true
        return self.engine
    }
    
    static func getSomeWheels (amount: Int) { // Здесь, и в дальнейших функциях прибавления деталей на склад, реализую проверку через if else, тк мне не нужно, чтобы функция что то возворащала, да и сама проверка довольно простая
        // если так делать в корни не правильно - прошу сообщите мне
        if amount > 0 {
            Conveyor.wheelsAmount += amount
        } else {
            print("Указано некорректное число")
        }
    }
    
    static func getSomeDoors (amount: Int) {
        if amount > 0 {
            Conveyor.doorsAmount += amount
        } else {
            print("Указано некорректное число")
        }
    }
    
    static func getSomeEngines (amount: Int) {
        if amount > 0 {
            Conveyor.enginesAmount += amount
        } else {
            print("Указано некорректное число")
        }
    }
    
    func createVin (vin: String) throws -> String {
        let duplicate = Conveyor.vinSet.contains(vin)
        
        guard self.vin.count < 10 else {
            throw ConveyorError.vinIsAlreadyAssigned
        }
        
        guard vin.count == 10 else {
            throw ConveyorError.wrongLength
        }
        
        guard duplicate == false else {
            throw ConveyorError.notUniqeVin
        }
        
        Conveyor.vinSet.insert(vin)
        self.vin = vin
        return self.vin
    }
}
