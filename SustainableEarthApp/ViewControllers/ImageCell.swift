//
//  ImageCell.swift
//  SustainableEarthApp
//
//  Created by Charlotte Ng on 1/4/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var actionBubble: UIView!
    @IBOutlet weak var actionImage: UIImageView!
    @IBOutlet weak var actionTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
