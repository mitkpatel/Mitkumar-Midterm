//
//  CalenderViewController.swift
//  Midterm_Mitkumar
//
//  Created by user215540 on 3/13/22.
//

import UIKit

class CalenderViewController: UIViewController {

    var calenderController:UIViewController = UIViewController()
    var customTabBar: UITabBarItem = UITabBarItem(title: nil, image: UIImage(named: "calender")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: UIImage(named: "calender"))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calenderController.tabBarItem = customTabBar
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
