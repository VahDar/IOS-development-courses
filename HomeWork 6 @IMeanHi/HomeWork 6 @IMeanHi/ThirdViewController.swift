//
//  ThirdViewController.swift
//  HomeWork 6 @IMeanHi
//
//  Created by Vakhtang on 08.12.2022.
//

import UIKit
import Lottie

class ThirdViewController: UIViewController {

    @IBOutlet weak var animationMusic: LottieAnimationView!
    
    
    @IBOutlet weak var animationMorty: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func run(_ sender: Any) {
        UIView.animate(withDuration: 3, delay: 0, options: [.repeat, .autoreverse]){
            
            self.animationMusic.transform = CGAffineTransform(rotationAngle: .pi)
            self.animationMusic.transform = CGAffineTransform(rotationAngle: .pi*2)
            self.animationMusic.loopMode = .loop
            self.animationMorty.loopMode = .autoReverse
            self.animationMorty.alpha = 0.2
            self.animationMorty.play()
            self.animationMusic.play()
        }
    }
    
}
