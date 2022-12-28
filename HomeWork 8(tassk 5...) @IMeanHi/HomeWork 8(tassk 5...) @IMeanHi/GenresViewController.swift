//
//  GenresViewController.swift
//  HomeWork 8(tassk 5...) @IMeanHi
//
//  Created by Vakhtang on 25.12.2022.
//

import UIKit
import Alamofire
class GenresViewController: UIViewController {
    
    @IBOutlet weak var genresTableView: UITableView!
    var arrayOfGenres: [Genre] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlGenres = "https://api.themoviedb.org/3/genre/movie/list?api_key=67f032f64d08b9fef26884d7cef4153f&language=en-US"
        
        AF.request(urlGenres).responseDecodable(of: GenresModel.self) { listOfmovies in
            self.arrayOfGenres = listOfmovies.value?.genres ?? []
            self.genresTableView.reloadData()
        }
        
    }
   
}
extension GenresViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfGenres.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(arrayOfGenres[indexPath.row].name )"
        return cell
    }
}
