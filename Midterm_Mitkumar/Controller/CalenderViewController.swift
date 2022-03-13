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
    }

}
