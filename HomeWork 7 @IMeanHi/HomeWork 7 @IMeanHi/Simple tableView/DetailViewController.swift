//
//  DetailViewController.swift
//  HomeWork 7 @IMeanHi
//
//  Created by Vakhtang on 15.12.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var topLabelDatailController: UILabel!
    @IBOutlet weak var bottomLabalDatailController: UILabel!
    
    var name: String = "noname"
    var number: String = "nonumber"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        topLabelDatailController.text = number
        bottomLabalDatailController.text = name
       
    }

}
