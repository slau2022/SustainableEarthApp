//
//  SpecificLeaderboard.swift
//  SustainableEarthApp
//
//  Created by Casper Wong on 7/9/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit
import Firebase

class SpecificLeaderboard: UIViewController {
    
    let db = Firestore.firestore()
    
    var CommunityName: String = "Error getting community"
    
    var usersArray: [User] = []

    @IBOutlet weak var LeaderboardTitle: UILabel!
    
    @IBOutlet weak var LeaderboardSize: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LeaderboardTitle.text = "\(CommunityName) !!"
        loadUsers()
        
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: K.LeaderboardNibName, bundle: nil), forCellReuseIdentifier: K.LeaderboardCellIdentifier)
        
    }
    
    func loadUsers() {
        // See: https://firebase.google.com/docs/firestore/query-data/queries?authuser=0
        db.collection("communities").whereField("CommunityName", isEqualTo: CommunityName).getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    let usersInCommunity = document.data()["Members"] as! Array<String>
                    self.LeaderboardSize.text = "Size: \(usersInCommunity.count)"
                    for userID in usersInCommunity {
                        // Get points of user from user database
                        self.db.collection("users").document(userID).getDocument { (userInfo, error) in
                            if let userInfo = userInfo, userInfo.exists {
                                if let points = userInfo["coins"] as? Int {
                                    let newUser = User(name: userID, score: points)
                                    self.usersArray.append(newUser)
                                    
                                    DispatchQueue.main.async {
                                        self.tableView.reloadData()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

extension SpecificLeaderboard: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.LeaderboardCellIdentifier, for: indexPath) as! LeaderboardCell
        cell.NameCell.text = "\(usersArray[indexPath.row].name)"
        cell.ScoreCell.text = "\(usersArray[indexPath.row].score)"
        cell.PlacingCell.text = "\(indexPath.row + 1)"
        
        return cell
    }
}
