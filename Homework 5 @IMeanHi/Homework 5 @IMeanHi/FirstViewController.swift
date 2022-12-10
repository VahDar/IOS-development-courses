//
//  FirstViewController.swift
//  Homework 5 @IMeanHi
//
//  Created by Vakhtang on 01.12.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    var circleGreen = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleGreen = UIView(frame: CGRect(x: 75, y: 300, width: 250, height: 250))
        circleGreen.backgroundColor = .green
        circleGreen.layer.cornerRadius = circleGreen.layer.bounds.width / 2
        view.addSubview(circleGreen)
    }
    

}
