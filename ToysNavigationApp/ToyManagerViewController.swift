//
//  ToyManagerViewController.swift
//  ToysNavigationApp
//
//  Created by Татьяна Кочетова on 08.04.2021.
//

import UIKit

class ToyManagerViewController: UIViewController {
    
    @IBOutlet var toyNameTexfField: UITextField!
    @IBOutlet var editToyButton: UIButton!
    @IBOutlet var newToyButton: UIButton!
    
    var editModeIsOn = false
    var toyName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newToyButton.isHidden = editModeIsOn ? true : false
        editToyButton.isHidden = editModeIsOn ? false : true
        toyNameTexfField.text = toyName
        
    }
    
    @IBAction func cancelAction() {
        dismiss(animated: true)
    }
    
}
