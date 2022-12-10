//
//  ViewController.swift
//  HomeWork 6 @IMeanHi (task4...)
//
//  Created by Vakhtang on 08.12.2022.
//

import UIKit

class ViewController: UIViewController, BlockMenuBarNavigation {
    
    func navigationBarButtonPressed(_ sender: BlockMenu) {
        switch sender{
        case topBlockMenu: print("Top button menu item pressed")
        case leftBlockMenu: print("Left button menu item pressed")
        case rightBlockMenu: print("Top button menu item pressed")
        default: break
        }
    }
    
    

    @IBOutlet weak var topBlockMenu: BlockMenu!
    
    @IBOutlet weak var leftBlockMenu: BlockMenu!
    
    @IBOutlet weak var rightBlockMenu: BlockMenu!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftBlockMenu.configure(with: "Покупка частями", image: UIImage(named: "cat")!)
        rightBlockMenu.configure(with: "Archive", image: UIImage(named: "archive")!)
        
        topBlockMenu.delegate = self
        leftBlockMenu.delegate = self
        rightBlockMenu.delegate = self
    }
    


}

