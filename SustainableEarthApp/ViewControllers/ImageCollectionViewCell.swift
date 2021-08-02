//
//  ImageCollectionViewCell.swift
//  SustainableEarthApp
//
//  Created by Bahl, Shreya on 8/1/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    override func prepareForReuse() {
        super.prepareForReuse()
        self.imageView.image = nil
    }
}
