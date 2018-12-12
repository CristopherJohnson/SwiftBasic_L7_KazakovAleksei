//
//  cars.swift
//  L7_KazakovAleksei
//
//  Created by Алексей Казаков on 12/12/2018.
//  Copyright © 2018 Алексей Казаков. All rights reserved.
//

import Foundation


protocol Carable { // общее описание машины через протокол
    var wheels: Int { get  set }
    var engine: Bool { get set }
    var doors: Int { get set }
    var vin: String { get set } // vin-номер машины
}

protocol Details {
    var wheelsAmount: Int { get  set }
    var enginesAmount: Int { get  set }
    var doorsAmount: Int { get  set }
}
