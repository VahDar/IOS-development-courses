//
//  File.swift
//  Homework 3 @IMeanHi
//
//  Created by Vakhtang on 20.11.2022.
//

import Foundation

struct Civil2: Movable {
    func movable() {
        let move = Int.random(in: 0...10)
        let successInfect = Int.random(in: 0...6)
        if move <= 5 {
            
            print("Civil2 bitten")
            if successInfect < 3 {
                print("Civil2 is lucky and the zombie couldn't infect you")
            } else {
                print("Civil2 is infected by zombies")
            }
        } else {
            
            print("Civilian2 escaped")
        }
    }
}




