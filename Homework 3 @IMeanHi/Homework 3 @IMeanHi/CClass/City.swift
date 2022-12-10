//
//  City.swift
//  Homework 3 @IMeanHi
//
//  Created by Vakhtang on 20.11.2022.
//

import Foundation

class City {
    func zombieAttackCity(zombie1: Zombie, zombie2: Zombie2) {
        Zombie().movable()
        Zombie().bite()
        Zombie2().movable()
        Zombie2().bite()
    }
    func civilTryesEscap(civil1: Civil, civil2: Civil2) {
        Civil().startMovable()
        Civil().movable()
        Civil2().startMovable()
        Civil2().movable()
    }
    
    func superUnits(unit1: Unit, unit2: Unit2) {
        Unit().greeting()
        Unit().movable()
        Unit().attacking()
        Unit().accuracy()
        Unit().superShot()
        Unit2().greeting()
        Unit2().movable()
        Unit2().attacking()
        Unit2().accuracy()
        Unit2().superShot()
    }
}
