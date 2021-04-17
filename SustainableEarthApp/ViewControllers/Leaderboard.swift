//
//  Leaderboard.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import UIKit
import Firebase

class Leaderboard: UIViewController {

    let db = Firestore.firestore()
    
    var communities: [Community] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: K.CommNibName, bundle: nil), forCellReuseIdentifier: K.CommCellIdentifier)
        
        loadCommunities()
    }
    
    func loadCommunities() {
        db.collection("communities").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                if let snapshotDocuments = querySnapshot?.documents {
                    for doc in snapshotDocuments {
                        let data = doc.data()
                        if let newTitle = data["CommunityName"] as? String, let members = data["Members"] as? Array<Any> {
                            print("hi:", members.count)
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
    
    @IBOutlet weak var tableView: UITableView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension Leaderboard: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return communities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.CommCellIdentifier, for: indexPath) as! CommunityCell
        cell.header.text = communities[indexPath.row].title
        cell.numUsers.text = "Size: \(communities[indexPath.row].numUsers)"
        return cell
    }
}

extension Leaderboard: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User just clicked on row number: ", indexPath.row)
    }
}
