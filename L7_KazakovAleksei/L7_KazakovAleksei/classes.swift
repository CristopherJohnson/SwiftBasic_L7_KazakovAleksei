//
//  classes.swift
//  L7_KazakovAleksei
//
//  Created by Алексей Казаков on 12/12/2018.
//  Copyright © 2018 Алексей Казаков. All rights reserved.
//

import Foundation

class Conveyor: Carable, Details {
    var wheels: Int = 0
    var engine: Bool = false
    var doors: Int = 0
    var vin: String = ""
    var wheelsAmount: Int = 4
    var enginesAmount: Int = 1
    var doorsAmount: Int = 4
    
    func connectWheels (connectingWheelsAmount wheels: Int) throws -> Int {
        guard wheels == 4 else {
            throw ConveyorError.wrongWheelsAmount
        }
        self.wheelsAmount -= wheels
        self.wheels += wheels
        return self.wheels
    }
}
