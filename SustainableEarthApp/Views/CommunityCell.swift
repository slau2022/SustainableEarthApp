//
//  CommunityCell.swift
//  SustainableEarthApp
//
//  Created by Casper Wong on 1/28/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit

class CommunityCell: UITableViewCell {
    
    @IBOutlet weak var communityBubble: UIStackView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        leftImageView.layer.cornerRadius = leftImageView.frame.size.height / 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
