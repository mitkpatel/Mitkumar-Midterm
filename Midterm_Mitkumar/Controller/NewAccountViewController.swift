//
//  NewAccountViewController.swift
//  Midterm_Mitkumar
//
//  Created by user215540 on 3/13/22.
//

import UIKit

class NewAccountViewController: UIViewController {

    @IBOutlet weak var sliderLabel: UITextField!
    
    @IBOutlet weak var dateLabel: UITextField!
    
    let datePicker = UIDatePicker()
    
    @IBAction func slider(_ sender: UISlider) {
        var value = String(String(Int(sender.value * 1000)))
        sliderLabel.text = value + "€"
        print(String(Int(sender.value * 1000)))
    }
    
    @IBAction func validation(_ sender: Any) {
        displayAlertMessage(messageToDisplay: "Successfully new account created!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createDatePicker()
        // Do any additional setup after loading the view.
    }
    
    func displayAlertMessage(messageToDisplay: String)
       {
           let alertController = UIAlertController(title: "Done!!!", message: messageToDisplay, preferredStyle: .alert)
           
           let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
               
               // Code in this block will trigger when OK button tapped.
               print("Ok button tapped");
               
           }
           
           alertController.addAction(OKAction)
           
           self.present(alertController, animated: true, completion:nil)
       }
    
    func  createDatePicker() {
        dateLabel.textAlignment = .center
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let donebtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([donebtn], animated: true)
        dateLabel.inputAccessoryView = toolbar
        dateLabel.inputView = datePicker
        datePicker.datePickerMode = .date
    }
    
    @objc func donePressed() {
        
        let format = DateFormatter()
        format.dateStyle = .medium
        format.timeStyle = .none
        dateLabel.text = "\(datePicker.date)"
        self.view.endEditing(true)
    }
}
