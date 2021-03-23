//
//  ViewController.swift
//  ClimateIOS
//
//  Created by dl1 on 3/17/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
 
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        print("hi")
    }
    
}

