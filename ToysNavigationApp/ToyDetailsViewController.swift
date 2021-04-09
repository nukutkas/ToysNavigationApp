//
//  ToyDetailsViewController.swift
//  ToysNavigationApp
//
//  Created by Татьяна Кочетова on 08.04.2021.
//

import UIKit

class ToyDetailsViewController: UIViewController {
    
    @IBOutlet var toyNameLabel: UILabel!
    
    var toyName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toyNameLabel.text = toyName

    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let toysManagerVC = segue.destination as! ToyManagerViewController
        toysManagerVC.toyName = toyName
        toysManagerVC.editModeIsOn = true
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        let toyManagerVC = segue.source as! ToyManagerViewController
        toyNameLabel.text = toyManagerVC.toyNameTexfField.text
    }

}
