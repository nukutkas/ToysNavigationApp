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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
