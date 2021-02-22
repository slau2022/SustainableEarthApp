//
//  Leaderboard.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import UIKit

class Leaderboard: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: K.CommNibName, bundle: nil), forCellReuseIdentifier: K.CommCellIdentifier)
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var communities: [Community] = [
        Community(title: "Class of 2022+", members: "100 members", rank: "rank 42"),
        Community(title: "Stever House", members: "64 members", rank: "rank 21")
    ]

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
        cell.label.text = communities[indexPath.row].title
        return cell
    }
}

extension Leaderboard: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User just clicked on row number: ", indexPath.row)
    }
}
