//
//  Home.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import UIKit
import Firebase

class Home: UIViewController {

    @IBOutlet weak var testImageRetrieve: UIImageView!
    
    @IBOutlet weak var Coins: UIButton!
    @IBOutlet weak var Profile: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var messages: [Message] = [
        Message(action: "Refill Reusable Waterbottle", logged: "Times Logged: 15"),
        Message(action: "Brought Reusable Mug", logged: "Times Logged: 10"),
        Message(action: "Compost at Schatz", logged: "Times Logged: 15")
    ]
    
    var db: Firestore!
    
    override func viewDidLoad() {
        db = Firestore.firestore()
        Coins.circleCorner()
        setUpCoins()
        Coins.imageView?.contentMode = UIView.ContentMode.scaleAspectFit
        Coins.contentEdgeInsets = UIEdgeInsets(top: 0,left: 0,bottom: 0,right: 15)
        tableView.dataSource = self
        tableView.register(UINib(nibName: Constants.cellNibName, bundle: nil), forCellReuseIdentifier: Constants.cellIdentifier)

        super.viewDidLoad()
        
        // let storage = Storage.storage()
        

        // Do any additional setup after loading the view.
    }
    
    
    func setUpCoins(){
        
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

extension Home: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath)
        cell.textLabel?.text = messages[indexPath.row].action
        return cell
    }
}


