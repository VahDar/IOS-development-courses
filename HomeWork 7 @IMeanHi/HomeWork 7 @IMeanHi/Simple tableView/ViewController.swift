//
//  ViewController.swift
//  HomeWork 7 @IMeanHi
//
//  Created by Vakhtang on 15.12.2022.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayOfCities: [String] = ["Donetsk", "Odessa", "Kiev", "Lvov", "Bukovel", "Ivano-Frankovsk", "Krakow", "Katowice", "Berlin", "Viena", "Amsterdam", "Tbilisi", "Batumi", "Baku", "Sharm-El-Sheih","Dubai","Alania"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    
    @IBAction func addCityButton(_ sender: Any) {
        addCityAlertController()
    }
    func addCityAlertController(){
            let alertContoller = UIAlertController(title: "Add city", message: "city", preferredStyle: .alert)
            self.present(alertContoller, animated: true)
            
            alertContoller.addTextField{ (textField) in
                textField.placeholder = "City"
            }
            let continueAction = UIAlertAction(title: "Add", style: .default){ [weak alertContoller] _ in
                guard let textField = alertContoller?.textFields else {return}
                if let city = textField[0].text, !city.isEmpty  {
                    self.arrayOfCities.append("\(city)")
                    self.tableView.reloadData()
                }
            
            }
           
            alertContoller.addAction(continueAction)
        }
    }

    extension ViewController: UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            arrayOfCities.count
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SimpleTableViewCell
            
            cell.bottomLabel.text = arrayOfCities[indexPath.row]
            cell.topLabel.text = "\(indexPath.row)"
            return cell
        }
    }
    
    extension ViewController: UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            let storybord = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storybord.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            
            viewController.number = "\(indexPath.row)"
            viewController.name = arrayOfCities[indexPath.row]
            
            navigationController?.pushViewController(viewController, animated: true)
        }
        
}


