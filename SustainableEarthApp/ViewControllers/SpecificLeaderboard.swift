//
//  SpecificLeaderboard.swift
//  SustainableEarthApp
//
//  Created by Casper Wong on 7/9/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit

class SpecificLeaderboard: UIViewController {
    
    var CommunityName: String = "Error getting community"

    @IBOutlet weak var LeaderboardTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LeaderboardTitle.text = "\(CommunityName) !!"

        // Do any additional setup after loading the view.
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
