//
//  File.swift
//  Homework 3 @IMeanHi
//
//  Created by Vakhtang on 20.11.2022.
//

import Foundation
struct Unit2: SuperUnit {
    
    var name = "Jack"
    let move = Int.random(in: 0...10)
    let successInfect = Int.random(in: 0...6)
    let accuracySuccess = Int.random(in: 0...6)
    func movable() {
        
        if move <= 5 {
            
            print("\(name): I'm bitten")
            
            if successInfect < 3 {
                print("You lucky and the zombie couldn't infect \(name)")
            } else {
                print("\(name) is infected by zombies")
                
            }
        } else {
            
            print("\(name) escaped the bite")
        }
    }
    
    
    
    func attacking() {
        print("\(name): This zombie is mine")
    }
    
    func accuracy() {
        if accuracySuccess <= 3 {
            print("\(name): I didn't hit the zombie")
        } else {
            print("\(name): I killed this zombie")
        }
    }
    func superShot() {
        print("\(name): I try to use Super Shot")
        let superShot: Bool? = Bool.random()
        let accessSuperShot = superShot ?? true
        if accessSuperShot == false {
            print("\(name): Super shot is not ready")
        } else {
            print("\(name): Super Shot is ready and Zombie is dead")
        }
    }
    
    
}



