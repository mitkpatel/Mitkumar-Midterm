//
//  ViewController.swift
//  Midterm_Mitkumar
//
//  Created by user215540 on 3/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var iconView: UIView!
    
    @IBOutlet weak var btnNotification: UIButton!
    
    @IBOutlet weak var labelHeading: UILabel!
    @IBOutlet weak var labelSubHeading: UILabel!
    
    
    let easeIn: UIView.AnimationOptions = [.curveEaseIn, .repeat, .autoreverse]
    let easeOut: UIView.AnimationOptions = [.curveEaseInOut, .repeat, .autoreverse]
    
    @objc func tapOnButton() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "LoginController") as!
        LoginViewController
        self.present(controller, animated: true, completion: nil)
    }
    
    @objc func tapOnButtonForNavigation() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "LoginController") as!
        LoginViewController
        let navigation = UINavigationController(rootViewController: controller)
        self.view.addSubview(navigation.view)
        self.addChild(navigation)
        navigation.didMove(toParent: self)
    }
    
    private let splashLogo: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        imageView.image = UIImage(named: "logo")
        return imageView
    }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        splashLogo.center = view.center
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            self.animate()
        })
    }
    
    private func animate() {
        UIView.animate(withDuration: 1, animations: {
            let size = self.view.frame.size.width * 3
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.height - size
            
            self.splashLogo.frame = CGRect(x: -(diffX/2), y: diffY/2, width: size, height: size)
        })
        
        UIView.animate(withDuration: 1.5, animations: {
            self.splashLogo.alpha = 0
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(splashLogo)
        myImage.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        myImage.layer.shadowOffset = CGSize(width: 6.0, height: 6.0)
        myImage.layer.shadowOpacity = 1.0
        myImage.layer.shadowRadius = 2.0
        myImage.layer.cornerRadius = 20
        myImage.layer.masksToBounds = false
        
        btnNotification.addTarget(self, action: #selector(tapOnButtonForNavigation), for: .touchUpInside)
      
        UIView.animate(withDuration: 1.2, delay: 0.2, options: easeIn, animations: {
            self.iconView.frame.origin.y += 60
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 0.5, options: easeOut, animations: {
            self.labelHeading.transform = CGAffineTransform.identity.translatedBy(x: 80, y: 0)
            self.labelHeading.transform = CGAffineTransform.identity.translatedBy(x: -80, y: 0)
        }, completion: nil)
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.transition(with: labelHeading, duration: 3, options: easeIn, animations: {
        }, completion: nil)
        
       
        
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
        if let walkthroughViewController = storyboard.instantiateViewController(withIdentifier: "WalkthroughViewController") as? WalkthroughViewController {
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                self.present(walkthroughViewController, animated: true, completion: nil)
            })
        }
    }

}
