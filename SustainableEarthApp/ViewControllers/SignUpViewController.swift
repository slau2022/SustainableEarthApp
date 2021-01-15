//
//  SignUpViewController.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import DropDown

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var passWordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var selectCollege: UIButton!
    @IBOutlet weak var collegesTable: UITableView!
    var collegesList = ["College of Engineering", "College of Fine Arts", "Dietrich College of Humanities & Social Sciences", "Heinz College of Information Systems and Public Policy", "Mellon College of Science", "School of Computer Science", "Tepper School of Business"]
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
    }
    
    func setUpElements(){
        errorLabel.alpha = 0
        collegesTable.isHidden = true
        print("SETUP")
    }
    // Check fields to ensure that the fields are correct, otherwise return an error message
    func validateFields() -> String?{
        // Check all fields are filled
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passWordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""{
            
            return "Please fill in all fields."
        }
        
        // Check if passwords is secure
        let cleanedPass = passWordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if !Utilities.isPasswordValid(cleanedPass) {
            
            return "Please make sure your password has 8 characters, a special character and a number. "
        }
        
        return nil
    }
    @IBAction func selectCollegeClick(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3){
            self.collegesTable.isHidden = false
        }

    }

    
    func showError(_ message:String){
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    func transitionToHome(){
        let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? UITabBarController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func signUpTapped(_ sender: Any) {
        // Validate Fields
        let error = validateFields()
        
        if error != nil {
            showError(error!)
        }
        else {
            // Create cleaned version of text fields
            
            let firstName = firstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastName = lastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passWordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            
            // create user
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                
                // Check for errors
                if err != nil {
                    // There was an error creating the user
                    self.showError("Error creating user")
                }
                else {
                    // User was created successfully, now store the first name and last name
                    let db = Firestore.firestore()
                    db.collection("users").addDocument(data:["firstName":firstName, "lastName":lastName, "uid":result!.user.uid]) { (error) in
                        
                        if error != nil {
                            self.showError("Error saving user data")
                        }
                    }
                    
                    self.transitionToHome()
                }
            }
            // transition to home screen
        }
    }
    
    
}

extension SignUpViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int {
        print("tableView1")
        print(collegesList)
        return collegesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("tableView2")
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = collegesList[indexPath.row]
        return cell
    }
    
}

