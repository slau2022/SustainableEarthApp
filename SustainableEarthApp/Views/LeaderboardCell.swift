//
//  SpecificLeaderboardCell.swift
//  SustainableEarthApp
//
//  Created by Casper Wong on 7/14/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit

class LeaderboardCell: UITableViewCell {

    @IBOutlet weak var PlacingCell: UILabel!
    
    @IBOutlet weak var ScoreCell: UILabel!
    
    @IBOutlet weak var NameCell: UILabel!
    
    // @IBOutlet weak var ImageCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
