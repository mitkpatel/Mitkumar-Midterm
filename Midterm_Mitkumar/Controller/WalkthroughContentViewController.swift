//
//  WalkthroughContentViewController.swift
//  Midterm_Mitkumar
//
//  Created by user215540 on 3/9/22.
//

import UIKit

class WalkthroughContentViewController: UIViewController {
    
    // Outlets
    
    @IBOutlet var headingLabel: UILabel! {
        didSet {
            headingLabel.numberOfLines = 0
        }
    }
    
    @IBOutlet var subHeadingLabel: UILabel! {
        didSet {
            subHeadingLabel.numberOfLines = 0
        }
    }
    
    @IBOutlet var contentImageView: UIImageView!

    // Properties
    
    var index = 0
    var heading = ""
    var subHeading = ""
    var imageFile = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headingLabel.text = heading
        subHeadingLabel.text = subHeading
        contentImageView.image = UIImage(named: imageFile)
        
        headingLabel.alpha = 0
        subHeadingLabel.alpha = 0
        contentImageView.alpha = 0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
            self.contentImageView.alpha = 0.6
        }) { (true) in
            self.showHeading()
        }
        
    }
    
    func showHeading() {
        UIView.animate(withDuration: 1, animations: {
            self.headingLabel.alpha = 0.6
        }, completion: {
            (true) in
            
            self.showSubHeading()
        })
    }
    
    func showSubHeading() {
        UIView.animate(withDuration: 1, animations: {
            self.subHeadingLabel.alpha = 0.6
        }, completion: {
            (true) in
        })
    }
    
}
