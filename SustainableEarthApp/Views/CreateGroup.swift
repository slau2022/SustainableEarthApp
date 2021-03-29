//
//  CreateGroup.swift
//  SustainableEarthApp
//
//  Created by Casper Wong on 2/15/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit
import Firebase

class CreateGroup: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var buttonPressed: UIButton!
    
    @IBOutlet weak var communityName: UITextField!

    let db = Firestore.firestore()
    
    @IBAction func groupCreated(_ sender: Any) {
        if let name = communityName.text {
            // var ref: DocumentReference? = nil
            db.collection("communities").addDocument(data: [
                "CommunityName": name
            ]) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                } else {
                    print("Document added!")
                    // print("Document added with ID: \(ref!.documentID)")
                }
            }
        }
    }
}