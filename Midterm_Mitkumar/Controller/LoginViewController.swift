//
//  LoginViewController.swift
//  Midterm_Mitkumar
//
//  Created by user215540 on 3/11/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!

    @IBOutlet weak var btnLogIn: UIButton!
    
    @IBOutlet weak var btnSignUp: UIButton!
    
    var isPasswordValid: Bool = false
    var isNameValid: Bool = false
    var isAllValid: Bool = false
    
    @objc func tapOnButton() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "SignUpController") as!
        SignUpViewController
        self.present(controller, animated: true, completion: nil)
    }
    
    @objc func tapOnButtonForNavigation() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "SignUpController") as!
        SignUpViewController
        let navigation = UINavigationController(rootViewController: controller)
        self.view.addSubview(navigation.view)
        self.addChild(navigation)
        navigation.didMove(toParent: self)
    }
    
    
    @IBOutlet weak var btnGoogle: UIButton! {
        didSet {
            btnGoogle.layer.cornerRadius = 15.0
            btnGoogle.layer.masksToBounds = true
            btnGoogle.layer.borderWidth = 1
            btnGoogle.layer.borderColor = UIColor.gray.cgColor
        }
    }
    
    @IBOutlet weak var btnFacebook: UIButton! {
        didSet {
            btnFacebook.layer.cornerRadius = 15.0
            btnFacebook.layer.masksToBounds = true
            btnFacebook.layer.borderWidth = 1
            btnFacebook.layer.borderColor = UIColor.gray.cgColor
            btnFacebook.setImage(UIImage(systemName: "facebook"),
                                 for: .normal)
            
        }
    }
    
    let button = UIButton(type: .custom)
    var btnColor = UIButton(type: .custom)
    
    func isNameValid(name: String) -> Bool {
        var returnValue = true
        let nameRegEx = "/^[a-z ,.'-]+$/i"
        
        do {
                    let regex = try NSRegularExpression(pattern: nameRegEx)
                    let nsString = name as NSString
                    let results = regex.matches(in: name, range: NSRange(location: 0, length: nsString.length))
                    
                    if results.count == 0
                    {
                        returnValue = false
                    }
                    
                } catch let error as NSError {
                    print("invalid regex: \(error.localizedDescription)")
                    returnValue = false
                }
                
                return  returnValue
    }
    
    
    @objc func passwordCheck() {
        if (password.text?.isEmpty)! {
            isPasswordValid = false
            return
        }
        else {
            isPasswordValid = true
        }
    }
    
    
    @objc func login() {
        username.rightViewMode = .never
        if (username.text?.contains(" "))! {
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: username.frame.width, height: username.frame.height))
            imageView.image = UIImage(named: "Path 1939")
            imageView.contentMode = .scaleAspectFit
            username.rightView = imageView
            username.rightViewMode = .always
            isNameValid = true
            return
        }
        else {
           
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: username.frame.height))
        username.leftView = paddingView
        username.leftViewMode = .always
        username.layer.sublayerTransform = CATransform3DMakeTranslation(-10, 0, 0)
        
        let paddingView1: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: username.frame.height))
        password.leftView = paddingView1
        password.leftViewMode = .always
       
        //Basic texfield Setup
        username.borderStyle = .none
        username.backgroundColor = UIColor.groupTableViewBackground // Use anycolor that give you a 2d look.

        //To apply corner radius
        username.layer.cornerRadius = 10

        //To apply border
        username.layer.borderWidth = 0.25
        username.layer.borderColor = UIColor.white.cgColor

        //To apply Shadow
        username.layer.shadowOpacity = 1
        username.layer.shadowRadius = 3.0
        username.layer.shadowOffset = CGSize.zero // Use any CGSize
        username.layer.shadowColor = UIColor.lightGray.cgColor
        
        //Basic texfield Setup
        password.borderStyle = .none
        password.backgroundColor = UIColor.groupTableViewBackground // Use anycolor that give you a 2d look.

        //To apply corner radius
        password.layer.cornerRadius = 10

        //To apply border
        password.layer.borderWidth = 0.25
        password.layer.borderColor = UIColor.white.cgColor

        //To apply Shadow
        password.layer.shadowOpacity = 1
        password.layer.shadowRadius = 3.0
        password.layer.shadowOffset = CGSize.zero // Use any CGSize
        password.layer.shadowColor = UIColor.lightGray.cgColor
        
        
        password.rightViewMode = .unlessEditing
                
        button.setImage(UIImage(named: "Pfad 21"), for: .normal)
                button.imageEdgeInsets = UIEdgeInsets(top: 5, left: -24, bottom: 5, right: 15)
                button.frame = CGRect(x: CGFloat(password.frame.size.width - 25), y: CGFloat(5), width: CGFloat(15), height: CGFloat(25))
                button.addTarget(self, action: #selector(self.btnPasswordVisiblityClicked), for: .touchUpInside)
                password.rightView = button
                password.rightViewMode = .always
        self.password.isSecureTextEntry = true
        username.addTarget(self, action: #selector(login), for: .editingChanged)
        
        btnSignUp.addTarget(self, action: #selector(tapOnButtonForNavigation), for: .touchUpInside)
      
        self.navigationItem.hidesBackButton = true
        self.navigationItem.backButtonDisplayMode = .minimal
        password.addTarget(self, action: #selector(passwordCheck), for: .editingChanged)

    }
    
    @IBAction func btnPasswordVisiblityClicked(_ sender: Any) {
           (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
           if (sender as! UIButton).isSelected {
               self.password.isSecureTextEntry = false
               button.setImage(UIImage(named: "Pfad 21"), for: .normal)
           } else {
               self.password.isSecureTextEntry = true
               button.setImage(UIImage(named: "Pfad 21"), for: .normal)
           }
       }
    
    func displayAlertMessage(messageToDisplay: String)
       {
           let alertController = UIAlertController(title: "Error!!!", message: messageToDisplay, preferredStyle: .alert)
           
           let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
               
               // Code in this block will trigger when OK button tapped.
               print("Ok button tapped");
               
           }
           
           alertController.addAction(OKAction)
           
           self.present(alertController, animated: true, completion:nil)
       }
    
    @IBAction func validation(_ sender: Any) {
           (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
        if (isNameValid && isPasswordValid) {
            isAllValid = true
            let tabBarController = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "tabBarController")
                if let navigator = self.navigationController {
                     navigator.pushViewController(tabBarController, animated: true)
            }
//            let story = UIStoryboard(name: "Main", bundle: nil)
//            let controller = story.instantiateViewController(withIdentifier: "HomeController") as!
//            HomeViewController
//            let navigation = UINavigationController(rootViewController: controller)
//            self.view.addSubview(navigation.view)
//            self.addChild(navigation)
//            navigation.didMove(toParent: self)
        }
        else if (!isNameValid && !isPasswordValid) {
            displayAlertMessage(messageToDisplay: "Please provide valid Name and Password!")
        }
        else if (!isNameValid) {
            displayAlertMessage(messageToDisplay: "Please provide valid Username!")
        }
        else if let text = password.text, text.isEmpty {
            print("Password invalid");
            displayAlertMessage(messageToDisplay: "Please enter the password!")
        } else {
            isPasswordValid = true
        }
       }


}
