//
//  NewAccountViewController.swift
//  Midterm_Mitkumar
//
//  Created by user215540 on 3/13/22.
//

import UIKit

class NewAccountViewController: UIViewController {

    @IBOutlet weak var sliderLabel: UITextField!
    
    @IBAction func slider(_ sender: UISlider) {
        var value = String(String(Int(sender.value * 1000)))
        sliderLabel.text = value + "€"
        print(String(Int(sender.value * 1000)))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
