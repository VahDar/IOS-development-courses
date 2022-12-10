//
//  Zombie.swift
//  Homework 3 @IMeanHi
//
//  Created by Vakhtang on 20.11.2022.
//

import Foundation
struct Zombie: Movable, Bite {
    let successInfect = Int.random(in: 0...6)
    func movable() {
        print("Zombie is coming to bite you")
    }
    
    
}
