//
//  ViewController.swift
//  APIProject
//
//  Created by jayjay venegas on 12/18/19.
//  Copyright © 2019 jayjay venegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var newfilm: Int?
    
    var planets: [String]?
    
    
    @IBOutlet weak var planet1: UITextView!
    
    
    @IBOutlet weak var newlabel: UILabel!
    
    
   
            
            
            
            override func viewDidLoad() {
                super.viewDidLoad()
                
                // var plans = ""
                
                let url: URL = URL(string: "https://swapi.co/api/films/\((newfilm!) + 1)")!
                let responseData: Data? = try? Data(contentsOf: url)
                if let responseData = responseData {
                    let json: Any? = try? JSONSerialization.jsonObject(with: responseData, options: [])
                    if let json = json {
                        let dictionary: [String: Any]? = json as? [String: Any]
                        if let dictionary = dictionary {
                            let title: String? = dictionary["title"] as? String
                            let director: String? = dictionary["director"] as? String
                            let release_date: String? = dictionary["release_date"] as? String
                            if let title2:String = title,
                                let director2:String = director,
                                let release_date2:String = release_date {
                                newlabel.text = "This film \(title2), was directed by \(director2) and came out on \(release_date2)."
                            }}}}}
            
            
            
            
  /*
    func getPlanet(planets: String) -> String {
        let url: URL = URL(string: planets)!
        let responseData: Data? = try? Data(contentsOf: url)
        if let responseData = responseData {
            let json: Any? = try? JSONSerialization.jsonObject(with: responseData, options: [])
            if let json = json {
                let dictionary: [String: Any]? = json as? [String: Any]
                if let dictionary = dictionary {
                    let name: String? = dictionary["name"] as? String
                    let terrain: String? = dictionary["terrain"] as? String
                    let population: Int? = dictionary["population"] as? Int
                    
                    if let name2:String = name,
                        let terrain2:String = terrain,
                        let population2:Int = population {
                        planet1.text = "this planet is named \(name2), and has a terrain of \(terrain2), it has a population of \(population2)"
                    }
                }
               
                
            }; return "no"
           
        }
            
            
            
            //
            // Do any additional setup after loading the view.
            
            
            
            /*
             // MARK: - Navigation
             
             // In a storyboard-based application, you will often want to do a little preparation before navigation
             override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
             // Get the new view controller using segue.destination.
             // Pass the selected object to the new view controller.
             }
             */
            
            
            
    }}
 */
}
