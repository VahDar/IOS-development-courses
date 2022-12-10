//
//  ViewController.swift
//  HomeWork 6 @IMeanHi
//
//  Created by Vakhtang on 07.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redCircle.layer.cornerRadius = redCircle.layer.bounds.width / 2
    }


    @IBAction func button(_ sender: Any) {
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 4, initialSpringVelocity: 5, options: [.repeat, .autoreverse]){
            
            self.redCircle.backgroundColor = .red
            self.redCircle.center = self.view.center
        }
        
        
    }
}

