//
//  Civil.swift
//  Homework 3 @IMeanHi
//
//  Created by Vakhtang on 20.11.2022.
//

import Foundation

struct Civil: Movable {
    func movable() {
        let move = Int.random(in: 0...10)
        let successInfect = Int.random(in: 0...6)
        if move <= 5 {
            
            print("Civil bitten")
            if successInfect < 3 {
                print("You lucky and the zombie couldn't infect you")
            } else {
                print("Civilian you are infected by zombies")
            }
        } else {
            
            print("Civilian escaped")
        }
    }
}




