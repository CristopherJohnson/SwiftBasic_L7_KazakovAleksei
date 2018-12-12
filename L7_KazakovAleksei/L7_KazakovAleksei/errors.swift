//
//  errors.swift
//  L7_KazakovAleksei
//
//  Created by Алексей Казаков on 12/12/2018.
//  Copyright © 2018 Алексей Казаков. All rights reserved.
//

import Foundation

enum ConveyorError: Error {
    case wrongWheelsAmount
    case notEnoughWheels
    case tooMuchWheels
    
    case wrongDoorsAmount
    case notEnoughDoors
    case tooMuchDoors
    
    case wrongEnginesAmount
    case engineIsAlreadyConnected
    case notEnoughEngines
    
    case wrongLength
    case notUniqeVin
    case vinIsAlreadyAssigned
}

// Все обработки ошибко чере do catch я вынес в отдельные функции, чтобы не писать их каждый раз.
// Подскажите, так можно делать или не рекомендуется?
// Так же расскажите пожалуйста про localizedDescription

func connectWheels (car: Conveyor, wheels: Int) -> Conveyor {
    let temporaryCar = car
    do {
        _ = try temporaryCar.connectWheels(connectingWheelsAmount: wheels)
        print("Колеса успешно присоеденены")
    } catch ConveyorError.wrongWheelsAmount {
        print("К данной машине нужно прикрепить 4 колеса")
    } catch ConveyorError.tooMuchWheels {
        print("К данной машине больше нельзя присоединять колеса")
    } catch ConveyorError.notEnoughWheels {
        print("На складе недостаточно колес")
    } catch {
        print("Неизвестная ошибка")
    }
    return temporaryCar
}

func connectDoors (car: Conveyor, doors: Int) -> Conveyor {
    let temporaryCar = car
    do {
        _ = try temporaryCar.connectDoors(connectingDoorsAmount: doors)
        print("Двери успешно присоеденены")
    } catch ConveyorError.wrongDoorsAmount {
        print("К данной машине нужно прикрепить 4 двери")
    } catch ConveyorError.tooMuchDoors {
        print("К данной машине больше нельзя присоединять двери")
    } catch ConveyorError.notEnoughDoors {
        print("На складе недостаточно дверей")
    } catch {
        print("Неизвестная ошибка")
    }
    return temporaryCar
}

func connectEngine (car: Conveyor, engine: Int) -> Conveyor {
    let temporaryCar = car
    do {
        _ = try temporaryCar.connectEngine(connectingEngineAmount: engine)
        print("Двигатель успешно присоеденен")
    } catch ConveyorError.wrongEnginesAmount {
        print("К данной машине нужно присоединить 1 двигатель")
    } catch ConveyorError.engineIsAlreadyConnected {
        print("К данной машине уже присоединен двигатель. Больше ей двигателей не нужно")
    } catch ConveyorError.notEnoughEngines {
        print("На складе недостаточно двигателей")
    } catch {
        print("Неизвестная ошибка")
    }
    return temporaryCar
}

func createVin (car: Conveyor, vin: String) -> Conveyor {
    let temporaryCar = car
    do {
        _ = try temporaryCar.createVin(vin: vin)
        print("Vin номер успешно присвоен!")
    } catch ConveyorError.wrongLength {
        print("Vin номер должен состоять из 10 символов")
    } catch ConveyorError.notUniqeVin {
        print("Машина с данным Vin номером уже существует")
    } catch ConveyorError.vinIsAlreadyAssigned{
        print("К данной машине уже присвоен vin номер")
    } catch {
        print("Неизвестная ошибка")
    }
    return temporaryCar
}
