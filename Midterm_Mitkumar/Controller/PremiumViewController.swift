//
//  PremiumViewController.swift
//  Midterm_Mitkumar
//
//  Created by user215540 on 3/12/22.
//

import UIKit

class PremiumViewController: UIViewController {
    
    let button = UIButton(type: .custom)
    var btnColor = UIButton(type: .custom)
    
    @IBOutlet weak var btnClose: UIButton!
    
    @IBOutlet weak var btnSubscribe: UIButton!

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    @IBAction func validation(_ sender: Any) {
           (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if (true) {
            let tabBarController = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "tabBarController")
                if let navigator = self.navigationController {
                     navigator.pushViewController(tabBarController, animated: true)
            }
        }
        
    }


    @IBAction func tapOnButtonForNavigation(_ sender: Any) {
        print("Button Click")
        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        let tabBarController = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "tabBarController")
            if let navigator = self.navigationController {
                 navigator.pushViewController(tabBarController, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.hidesBackButton = true
        self.navigationItem.backButtonDisplayMode = .minimal
        
        btn1.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        btn1.layer.shadowOffset = CGSize(width: 6.0, height: 6.0)
        btn1.layer.shadowOpacity = 1.0
        btn1.layer.shadowRadius = 2.0
        btn1.layer.cornerRadius = 15
        btn1.layer.borderColor = UIColor.black.cgColor
        btn1.layer.borderWidth = 1
        btn1.layer.masksToBounds = false
        
        btn2.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        btn2.layer.shadowOffset = CGSize(width: 6.0, height: 6.0)
        btn2.layer.shadowOpacity = 1.0
        btn2.layer.shadowRadius = 2.0
        btn2.layer.cornerRadius = 15
        btn2.layer.masksToBounds = false
            
    }
    
    @IBAction func monthClick(_ sender: Any) {
           (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if (true) {
            btn2.layer.borderColor = UIColor.black.cgColor
            btn2.layer.borderWidth = 1
            
            btn1.layer.borderWidth = 0
            }
        }
        
    @IBAction func yearClick(_ sender: Any) {
           (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if (true) {
            btn1.layer.borderColor = UIColor.black.cgColor
            btn1.layer.borderWidth = 1
            
            btn2.layer.borderWidth = 0
            }
        }
        
}
