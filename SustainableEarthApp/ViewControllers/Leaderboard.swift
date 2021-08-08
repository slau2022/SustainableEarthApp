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
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCommunities()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: K.CommNibName, bundle: nil), forCellReuseIdentifier: K.CommCellIdentifier)
    }
    
    func loadCommunities() {
        db.collection("communities").addSnapshotListener { (querySnapshot, err) in
            self.communities = []
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                if let snapshotDocuments = querySnapshot?.documents {
                    for doc in snapshotDocuments {
                        let data = doc.data()
                        let usersInCommunity = data["Members"] as! Array<String>
                        // SLOW EFFICIENCY: Probably faster to have an array in users database containing communities they are in, rather than checking if each community contains user
                        if let user = Auth.auth().currentUser?.email, usersInCommunity.contains(user) {
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
    
}


extension Leaderboard: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return communities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.CommCellIdentifier, for: indexPath) as! CommunityCell
        cell.header.text = communities[indexPath.row].title
        cell.numUsers.text = "Size:  \(communities[indexPath.row].numUsers)"
        return cell
    }
}

extension Leaderboard: UITableViewDelegate{
    var allowsSelectionDuringEditing: Bool { true }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "SwitchLeaderboard", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SpecificLeaderboard {
            destination.CommunityName = communities[(tableView.indexPathForSelectedRow?.row)!].title
            tableView.deselectRow(at: tableView.indexPathForSelectedRow!, animated: true)
        }
    }
    
}
