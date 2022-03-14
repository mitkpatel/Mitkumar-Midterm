//
//  SettingViewController.swift
//  Midterm_Mitkumar
//
//  Created by user215540 on 3/13/22.
//

import UIKit

class SettingViewController: UIViewController {

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
    
    @IBOutlet weak var view3: UIView! {
        didSet{
            view3.layer.cornerRadius = 10.0
            view3.layer.masksToBounds = true
            view3.layer.borderWidth = 1
            view3.layer.borderColor = UIColor.gray.cgColor

        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
