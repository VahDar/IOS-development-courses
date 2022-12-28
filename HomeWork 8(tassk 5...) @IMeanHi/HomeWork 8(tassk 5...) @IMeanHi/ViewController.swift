//
//  ViewController.swift
//  HomeWork 8(tassk 5...) @IMeanHi
//
//  Created by Vakhtang on 24.12.2022.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableViewTrending: UITableView!
    var arratOfTrendig: [Movie] = []
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlTrending = "https://api.themoviedb.org/3/trending/all/day?api_key=67f032f64d08b9fef26884d7cef4153f"
        
        
        AF.request(urlTrending).responseDecodable(of: TrendingModel.self) { listOfmovies in
            self.arratOfTrendig = listOfmovies.value?.results ?? []
            self.tableViewTrending.reloadData()
            
           
            }
            
        }
        
        
    }
    
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arratOfTrendig.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(arratOfTrendig[indexPath.row].originalTitle ?? "There is no data")"
        return cell
    }
}
    



