//
//  CustomDesignViewController.swift
//  HomeWork 7 @IMeanHi
//
//  Created by Vakhtang on 17.12.2022.
//

import UIKit

class CustomDesignViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arrayOfPost: [Post] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        arrayOfPost = [postOne, postTwo]
        let nib = UINib(nibName: "CustomDesignTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomDesignTableViewCell")
    }
}

extension CustomDesignViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfPost.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomDesignTableViewCell") as! CustomDesignTableViewCell
        cell.configure(with: arrayOfPost[indexPath.row])
        return cell
    }
    
}
