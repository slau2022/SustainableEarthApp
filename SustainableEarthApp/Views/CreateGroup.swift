//
//  CreateGroup.swift
//  SustainableEarthApp
//
//  Created by Casper Wong on 2/15/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit
import Firebase

class CreateGroup: UITableViewController {

    @IBOutlet weak var groupName: UITextField!
    
    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func groupCreated(_ sender: UIButton) {
        if let name = groupName.text {
            var ref: DocumentReference? = nil
            ref = db.collection("communities").addDocument(data: [
                "groupName": name
            ]) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                } else {
                    print("Document added with ID: \(ref!.documentID)")
                }
            }
        }
    }
}
