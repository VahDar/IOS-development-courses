//
//  FourthViewController.swift
//  Homework 5 @IMeanHi
//
//  Created by Vakhtang on 01.12.2022.
//

import UIKit

class FourthViewController: UIViewController {

    var mainCircle = UIView()
    var circleRed = UIView()
    var circleGreen = UIView()
    var circleYellow = UIView()
    var circleBlue = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCircle = UIView(frame: CGRect(x: 75, y: 300, width: 300, height: 300))
        mainCircle.layer.cornerRadius = mainCircle.layer.bounds.width / 2

        
        circleRed = UIView(frame: CGRect(x: -40, y: -40, width: 210, height: 210))
        circleRed.backgroundColor = .red
        circleRed.layer.cornerRadius = circleRed.layer.bounds.width / 2
        
        circleYellow = UIView(frame: CGRect(x: 140, y: -30, width: 210, height: 210))
        circleYellow.backgroundColor = .yellow
        circleYellow.layer.cornerRadius = circleYellow.layer.bounds.width / 2
        
        circleGreen = UIView(frame: CGRect(x: 140, y: 120, width: 210, height: 210))
        circleGreen.backgroundColor = .green
        circleGreen.layer.cornerRadius = circleGreen.layer.bounds.width / 2
        
        circleBlue = UIView(frame: CGRect(x: -30, y: 140, width: 210, height: 210))
        circleBlue.backgroundColor = .blue
        circleBlue.layer.cornerRadius = circleBlue.layer.bounds.width / 2
        
    
        mainCircle.clipsToBounds = true
        view.addSubview(mainCircle)
        view.addSubview(circleRed)
        view.addSubview(circleYellow)
        view.addSubview(circleGreen)
        view.addSubview(circleBlue)
        mainCircle.addSubview(circleRed)
        mainCircle.addSubview(circleYellow)
        mainCircle.addSubview(circleGreen)
        mainCircle.addSubview(circleBlue)
    }
    
    

    
}
