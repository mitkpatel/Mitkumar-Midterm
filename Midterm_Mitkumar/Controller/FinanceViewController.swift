//
//  FinanceViewController.swift
//  Midterm_Mitkumar
//
//  Created by user215540 on 3/13/22.
//

import UIKit

class FinanceViewController: UIViewController {

    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var view1: UIView! {
        didSet{
            view1.layer.cornerRadius = 10.0
            view1.layer.masksToBounds = true
            view1.layer.borderWidth = 1
            view1.layer.borderColor = UIColor.gray.cgColor

        }
    }
   
    @IBOutlet weak var view2: UIView! {
        didSet{
            view2.layer.cornerRadius = 10.0
            view2.layer.masksToBounds = true
            view2.layer.borderWidth = 1
            view2.layer.borderColor = UIColor.gray.cgColor

        }
    }
    @IBOutlet weak var plus: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        btn1.layer.shadowOffset = CGSize(width: 6.0, height: 6.0)
        btn1.layer.shadowOpacity = 1.0
        btn1.layer.shadowRadius = 2.0
        btn1.layer.cornerRadius = 15
        btn1.layer.masksToBounds = false
        
        btn2.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        btn2.layer.shadowOffset = CGSize(width: 6.0, height: 6.0)
        btn2.layer.shadowOpacity = 1.0
        btn2.layer.shadowRadius = 2.0
        btn2.layer.cornerRadius = 15
        btn1.layer.backgroundColor = UIColor.systemGray5.cgColor
        btn2.layer.backgroundColor = UIColor.white.cgColor
        btn2.layer.masksToBounds = false
        
        btn3.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        btn3.layer.shadowOffset = CGSize(width: 6.0, height: 6.0)
        btn3.layer.shadowOpacity = 1.0
        btn3.layer.shadowRadius = 2.0
        btn3.layer.cornerRadius = 10
        btn3.layer.masksToBounds = false
        btn3.layer.backgroundColor = UIColor.systemGray5.cgColor
        
        
        plus.addTarget(self, action: #selector(tapOnButtonForNavigation), for: .touchUpInside)
        
    }
    
    
    @objc func tapOnButtonForNavigation() {
        let story = UIStoryboard(name: "Home", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "newAccountController") as!
        NewAccountViewController
        let navigation = UINavigationController(rootViewController: controller)
        self.view.addSubview(navigation.view)
        self.addChild(navigation)
        navigation.didMove(toParent: self)
    }

    
    @IBAction func movementsClick(_ sender: Any) {
           (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if (true) {
            btn1.layer.backgroundColor = UIColor.systemGray5.cgColor
            btn2.layer.backgroundColor = UIColor.white.cgColor
            }
        }
        
    @IBAction func statisticsClick(_ sender: Any) {
           (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if (true) {
            btn2.layer.backgroundColor = UIColor.systemGray5.cgColor
            btn1.layer.backgroundColor = UIColor.white.cgColor
            }
        }

}
