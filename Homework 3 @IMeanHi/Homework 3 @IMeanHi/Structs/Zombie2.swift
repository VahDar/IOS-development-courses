//
//  File.swift
//  Homework 3 @IMeanHi
//
//  Created by Vakhtang on 20.11.2022.
//

import Foundation

struct Zombie2: Movable, Bite {
    let successInfect = Int.random(in: 0...6)
    func movable() {
        print("Zombie2 is coming to bite you")
    }
    
    
}
