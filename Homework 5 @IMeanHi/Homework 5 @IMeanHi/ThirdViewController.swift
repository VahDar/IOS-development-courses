//
//  ThirdViewController.swift
//  Homework 5 @IMeanHi
//
//  Created by Vakhtang on 01.12.2022.
//

import UIKit

class ThirdViewController: UIViewController {

    var circleRed = UIView()
    var circleGreen = UIView()
    var circleYellow = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        circleRed = UIView(frame: CGRect(x: 170, y: 165, width: 250, height: 250))
        circleRed.backgroundColor = .red
        circleRed.layer.cornerRadius = circleRed.layer.bounds.width / 2
        
        circleYellow = UIView(frame: CGRect(x: 75, y: 300, width: 250, height: 250))
        circleYellow.backgroundColor = .yellow
        circleYellow.alpha = 0.7
        circleYellow.layer.cornerRadius = circleYellow.layer.bounds.width / 2
        
        circleGreen = UIView(frame: CGRect(x: 5, y: 475, width: 250, height: 250))
        circleGreen.backgroundColor = .green
        circleGreen.layer.cornerRadius = circleGreen.layer.bounds.width / 2
        
        
        view.addSubview(circleRed)
        view.addSubview(circleGreen)
        view.addSubview(circleYellow)
    }
    

}
