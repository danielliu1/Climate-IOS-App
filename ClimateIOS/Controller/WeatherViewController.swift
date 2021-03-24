//
//  ViewController.swift
//  ClimateIOS
//
//  Created by dl1 on 3/17/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
 
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
    }
    
    @IBAction func searchButtonPressed(_ sender: UIButton, forEvent event: UIEvent) {
        print(searchTextField.text!)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if searchTextField.text != "" {
            return true
        } else {
            textField.placeholder = "TYpe soomething"
            return false
        }
    }

    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true;
    }

    func  textFieldDidEndEditing(_ textField: UITextField) {
        searchTextField.text = ""
    }
}

