//
//  Home.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import UIKit
import Firebase
import Foundation

class Home: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var messages: [Message] = [
        Message(action: "Refill Reusable Waterbottle", logged: "Times Logged: 15"),
        Message(action: "Brought Reusable Mug", logged: "Times Logged: 10"),
        Message(action: "Compost at Schatz", logged: "Times Logged: 15")
    ]
    
    var db: Firestore!
    
    override func viewDidLoad() {
        db = Firestore.firestore()
        tableView.dataSource = self
        tableView.register(UINib(nibName: Constants.cellNibName, bundle: nil), forCellReuseIdentifier: Constants.cellIdentifier)
        Utilities.createNavBar(navigationItem)
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*func setUpCoins(){
        
        let userDoc = UserDefaults.standard.string(forKey: "userEmail") ?? "Error retrieving user"
        print(userDoc)
        let docRef = db.collection("users").document(userDoc)

        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let coinAmount = document.get("coins")
                if (coinAmount as? NSNumber) != nil
                {
                  let result_string = "\(coinAmount!)"
                    self.Coins.setTitle(result_string, for: .normal)
                }
            } else {
                print("Document does not exist")
            }
        }
        

        
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
