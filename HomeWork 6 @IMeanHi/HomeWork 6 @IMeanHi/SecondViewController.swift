//
//  SecondViewController.swift
//  HomeWork 6 @IMeanHi
//
//  Created by Vakhtang on 07.12.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var orangeCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orangeCircle.layer.cornerRadius = orangeCircle.layer.bounds.width / 2
    }
    
    
    @IBAction func run(_ sender: Any) {
        
        UIView.animateKeyframes(withDuration: 4, delay: 0, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 1) {
                self.orangeCircle.center.x = 52
                self.orangeCircle.center.y = 741
                
            }
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 1) {
                self.orangeCircle.center.x = 52
                self.orangeCircle.center.y = 72
            }
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 1) {
                self.orangeCircle.center.x = 330
                self.orangeCircle.center.y = 72
            }
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 1) {
                self.orangeCircle.center.x = 330
                self.orangeCircle.center.y = 741
                
            }
        }
        ){ completed in
            self.orangeCircle.isHidden = true
            
        }
        
    }
}
