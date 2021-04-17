//
//  LogInViewController.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import UIKit
import FirebaseAuth

class LogInViewController: UIViewController {

    @IBOutlet weak var backFromLogin: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    func setUpElements(){
        errorLabel.alpha = 0
        emailTextField.circleCorner()
        passwordTextField.circleCorner()
        loginButton.circleCorner()
    }
    
    func transitionToHome(){
           let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? UITabBarController
           
           view.window?.rootViewController = homeViewController
           view.window?.makeKeyAndVisible()
    }
    func validateFields() -> String?{
        // Check all fields are filled
        if emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields."
        }
        
        return nil
    }
    func showError(_ message:String){
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backFromLoginPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func logInTapped(_ sender: Any) {
        // Validate Text Fields
        let error = self.validateFields()
        
        if error != nil {
            showError(error!)
        } else {
            // Create clean versions of text fields
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            // Signing in the user
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                
                if error != nil{
                    self.errorLabel.text = error!.localizedDescription
                    self.errorLabel.alpha = 1
                } else {
                    UserDefaults.standard.set(email, forKey:"userEmail")
                    self.transitionToHome()
                }
            }
        }
    }
}

extension UITextField {
    func circleCorner(){
        //Basic texfield Setup
        borderStyle = .none
        
        //To apply corner radius
        layer.cornerRadius = frame.size.height / 2

        //To apply border
        layer.borderWidth = 0.25
        layer.borderColor = UIColor.white.cgColor

        //To apply Shadow
        layer.shadowOpacity = 1
        layer.shadowRadius = 3.0
        layer.shadowOffset = CGSize.zero // Use any CGSize
        layer.shadowColor = UIColor.gray.cgColor

        //To apply padding
        let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: frame.height))
        leftView = paddingView
        leftViewMode = UITextField.ViewMode.always
        
    }
}

extension UIButton {
    func circleCorner(){
        //To apply corner radius
        layer.cornerRadius = frame.size.height / 2

        //To apply border
        layer.borderWidth = 0.25
        layer.borderColor = UIColor.white.cgColor

        //To apply Shadow
        layer.shadowOpacity = 1
        layer.shadowRadius = 3.0
        layer.shadowOffset = CGSize.zero // Use any CGSize
        layer.shadowColor = UIColor.gray.cgColor

        
    }
    
}
