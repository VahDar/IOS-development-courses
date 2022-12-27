//
//  ViewController.swift
//  HomeWork 8 @IMeanHi
//
//  Created by Vakhtang on 23.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
  
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let data = self.getData() else {return}
        
        do {
            
            let decoder = JSONDecoder()
            let myData = try! decoder.decode(ModelName.self, from: data)
            print("\(myData.company?.companyDescription)")
            print ("\(myData.company?.listOfData?.first?.modelNumber)")
            print("\(myData.company?.listOfData?.first?.countries?.last)")
            print("\(myData.company?.listOfData?.last?.price?.regions?.first?.name)")
            print("\(myData.company?.listOfData?.last?.price?.regions?.last?.price)")
            print("\(myData.company)")
        
        } catch {
            print(error)
        }
        
    
    }
    
    private func getData() -> Data? {
        guard let url = Bundle.main.url(forResource: "RawData", withExtension: "json") else {
            
            return nil
        }
        
        do {
            
            let data = try! Data(contentsOf: url)
            return data
            
        }
        
        return nil
    }
}
