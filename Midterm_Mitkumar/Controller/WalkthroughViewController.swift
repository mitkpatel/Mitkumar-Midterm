//
//  WalkthroughViewController.swift
//  Midterm_Mitkumar
//
//  Created by user215540 on 3/9/22.
//

import UIKit

class WalkthroughViewController: UIViewController, WalkthroughPageViewControllerDelegate {
    
    
    // Outlets
    
    @IBOutlet var pageControl: UIPageControl?
    
    @IBOutlet var nextButton: UIButton! {
        didSet {
            nextButton.layer.cornerRadius = 25.0
            nextButton.layer.masksToBounds = true
        }
    }
    
    @IBOutlet var skipButton: UIButton! {
        didSet {
            skipButton.layer.cornerRadius = 25.0
            skipButton.layer.masksToBounds = true
        }
    }
    
    // Properties
    
    var walkThroughPageViewController: WalkthroughPageViewController?
    
    // Actions
    
    @IBAction func skipButtonTapped(sender: UIButton) {
        UserDefaults.standard.set(true, forKey: "hasViewedWalkthrough")
        dismiss(animated: true, completion: nil)
    }
   
    @IBAction func nextButtonTapped(sender: UIButton) {
        if let index = walkThroughPageViewController?.currentIndex {
            switch index {
            case 0...1:
                walkThroughPageViewController?.forwardPage()
                
            case 2:
                UserDefaults.standard.set(true, forKey: "hasViewedWalkthrough")
                dismiss(animated: true, completion: nil)
            
            default: break
            }
        }
        
        updateUI()
    }
    
    func updateUI() {
        if let index = walkThroughPageViewController?.currentIndex {
            switch index {
            case 0...1:
                nextButton.setTitle("Continue", for: .normal)
                nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
                skipButton.isHidden = false
            
            case 2:
                nextButton.setTitle("Get Started", for: .normal)
                skipButton.isHidden = true
            
            default: break
            }
            
            pageControl?.currentPage = index
        }
    }
    
    func didUpdatePageIndex(currentIndex: Int) {
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        if let pageViewController = destination as? WalkthroughPageViewController {
            walkThroughPageViewController = pageViewController
            walkThroughPageViewController?.walkthroughDelegate = self
        }
    }

}
