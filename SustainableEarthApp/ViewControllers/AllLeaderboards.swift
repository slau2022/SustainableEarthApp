//
//  AllLeaderboards.swift
//  SustainableEarthApp
//
//  Created by Casper Wong on 8/8/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit

class AllLeaderboards: Leaderboard {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadCommunities() {
        db.collection("communities").addSnapshotListener { (querySnapshot, err) in
            self.communities = []
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                if let snapshotDocuments = querySnapshot?.documents {
                    for doc in snapshotDocuments {
                        let data = doc.data()
                        if let newTitle = data["CommunityName"] as? String, let members = data["Members"] as? Array<Any> {
                            let newCommunity = Community(title: newTitle, numUsers: members.count)
                            self.communities.append(newCommunity)
                            
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
