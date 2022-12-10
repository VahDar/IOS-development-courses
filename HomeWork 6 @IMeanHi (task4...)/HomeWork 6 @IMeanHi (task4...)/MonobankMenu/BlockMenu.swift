//
//  BlockMenu.swift
//  HomeWork 6 @IMeanHi (task4...)
//
//  Created by Vakhtang on 09.12.2022.
//

import UIKit

protocol BlockMenuBarNavigation {
    func navigationBarButtonPressed(_ sender: BlockMenu)
}

class BlockMenu: BaseUI {
    
    var delegate: BlockMenuBarNavigation?
    
    @IBAction func menuBlockButtonPressed(_ sender: Any) {
        delegate?.navigationBarButtonPressed(self)
    }
    @IBOutlet weak var lableBlockMenu: UILabel!
    
    @IBOutlet weak var imageBlockMenu: UIImageView!
    
    func configure(with text: String, image: UIImage) {
        
        self.lableBlockMenu.text = text
        self.imageBlockMenu.image = image
        
    }
    
}
