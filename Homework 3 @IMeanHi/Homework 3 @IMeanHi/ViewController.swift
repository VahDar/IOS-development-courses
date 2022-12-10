//
//  ViewController.swift
//  Homework 3 @IMeanHi
//
//  Created by Vakhtang on 20.11.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let game = City()
        game.zombieAttackCity(zombie1: Zombie(), zombie2: Zombie2())
        
        game.civilTryesEscap(civil1: Civil(), civil2: Civil2())
        
        game.superUnits(unit1: Unit(), unit2: Unit2())
    }


}

