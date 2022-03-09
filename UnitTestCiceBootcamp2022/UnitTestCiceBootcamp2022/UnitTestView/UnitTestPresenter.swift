//
//  UnitTestPresenter.swift
//  UnitTestCiceBootcamp2022
//
//  Created by cice on 08/03/2022.
//

import Foundation
enum SomeError: Error {
    case CeroError
}

protocol UITestPresenterInputProtocol {
    
}

final class UnitTestPresenter {
    
    func sumar(numeor1: Int, numero2: Int) -> Int {
        return numeor1 + numero2
    }
    
    func restar(numeor1: Int, numero2: Int) -> Int {
        return numeor1 - numero2
    }
    
    func dividir(numeor1: Int, numero2: Int) -> Int {
        return numeor1 / numero2
    }
    
    func dividirCero(numeor1: Int, numero2: Int) throws -> Int {
        if numero2 == 0 {
            throw SomeError.CeroError
        }
        return numeor1 / numero2
    }
    
    func arraySquareOptionOne(numberArray: [Int]) -> [Int] {
        var result: [Int] = []
        for index in numberArray {
            result.append(index * index)
        }
        return result
    }
    
    func arraySquareOptionTwo(numberArray: [Int]) -> [Int] {
        let result = numberArray.map { numberArray in
            numberArray * numberArray
        }
        return result
    }
    
    func arraySquareOptionThree(numberArray: [Int]) -> [Int] {
        return numberArray.map { $0 * $0 }
    }
    
    func toFah(degreeUnit: Double) -> Double {
        return (degreeUnit * (9 * 0.2)) + 32
    }
    
    func toDre(fahUnit: Double) -> Double {
        return (fahUnit - 32) * 5/9
    }
    
    func toFahTwo(degreeUnit: Double) -> Double {
        return (degreeUnit * 9/5) + 32
    }
    
}

extension UnitTestPresenter: UITestPresenterInputProtocol {
    
}
