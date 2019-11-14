//
//  TableViewController.swift
//  Boat Dictionary
//
//  Created by jayjay venegas on 11/8/19.
//  Copyright © 2019 jayjay venegas. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    //let Boats:[String:[String]] = [
    //    "Wooden Plan":["Brown","Size of Wooden Plan","1/2"],
//        "Pirate Boat Ship":["Black","Extra Large","200"],
//        "SS Tipton Cruise":["White","big enough for Zack and Cody","3 Woodys"],
//        "Alligator Boat":["Alligator Color","Alligator Size","13"],
//        "Titanic":["Rusted","Size of Titanic","0"],
//        "Yacht":["Pink","Large","320"],
//        "SS Snoop Dog":["Green","Big","419"],
//        "Matthew":["skin color","5'4","2"],
// ]
    
    
    let boats:[Boat] = [
    Boat(n: "SS Kobie", dp: 11, c: "Brown", s: "Average"),
    Boat(n: "SS Matthew", dp: 8, c: "Brown and White", s: "Small"),
    Boat(n: "Pirate boat", dp: 2, c: "Black", s: "Large"),
    Boat(n: "log", dp: 1, c: "log color", s: "log sized")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return boats.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "boat", for: indexPath)
        let title = boats[indexPath.row].name
        cell.textLabel!.text = title

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        
        let indexPath = self.tableView.indexPathForSelectedRow
        
        let boat = self.boats[indexPath!.row]
        vc.boatName = boat.name
        vc.boatColor = boat.color
        vc.boatSize = boat.size
        vc.boatPower = "\(boat.dolphinPower)"
        

    }


}
