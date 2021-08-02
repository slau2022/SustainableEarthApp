//
//  CreateGroup2.swift
//  SustainableEarthApp
//
//  Created by Casper Wong on 3/20/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit
import Firebase

class CreateGroup2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var communityName: UITextField!
    @IBOutlet weak var buttonPressed: UIButton!
    
    let db = Firestore.firestore()
    
    @IBAction func groupCreated(_ sender: Any) {
        if let name = communityName.text, name != "", let groupCreator = Auth.auth().currentUser?.email {
            //var ref: DocumentReference? = nil
            db.collection("communities").document(name).setData([
                "CommunityName": name,
                "Members": [groupCreator],
                "Admins": [groupCreator]
            ]) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                } else {
                    print("Document added!")
                    self.navigationController?.popViewController(animated: true)
                }
            }
        }
        else {
            print("Group name cannot be empty")
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
