//
//  ToysListViewController.swift
//  ToysNavigationApp
//
//  Created by Татьяна Кочетова on 08.04.2021.
//

import UIKit

class ToyListViewController: UITableViewController {
    
    var toys = ["Bear", "Car"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toys.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = toys[indexPath.row]
        
        return cell
    }
  
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let toy = toys[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: toy)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        let toyManagerVC = segue.source as! ToyManagerViewController
        toys.append(toyManagerVC.toyNameTexfField.text ?? "Noname")
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let toyDetailsVC = segue.destination as! ToyDetailsViewController
            toyDetailsVC.toyName = sender as? String
        }
    }
    
   
    
}
