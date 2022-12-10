//
//  SecondViewController.swift
//  Homework 5 @IMeanHi
//
//  Created by Vakhtang on 01.12.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var circleGreen = UIView()
    var circleYellow = UIView()
    var circleRed = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        circleRed = UIView(frame: CGRect(x: 75, y: 49, width: 250, height: 250))
        circleRed.backgroundColor = .red
        circleRed.layer.cornerRadius = circleRed.layer.bounds.width / 2
        
        circleYellow = UIView(frame: CGRect(x: 75, y: 302, width: 250, height: 250))
        circleYellow.backgroundColor = .yellow
        circleYellow.layer.cornerRadius = circleYellow.layer.bounds.width / 2
        
        circleGreen = UIView(frame: CGRect(x: 75, y: 555, width: 250, height: 250))
        circleGreen.backgroundColor = .green
        circleGreen.layer.cornerRadius = circleGreen.layer.bounds.width / 2
        
        view.addSubview(circleRed)
        view.addSubview(circleYellow)
        view.addSubview(circleGreen)
    }
    

}
