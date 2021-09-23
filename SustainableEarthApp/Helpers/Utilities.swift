//
//  Utilities.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import Foundation
import UIKit

class Utilities {
    static func isPasswordValid(_ password: String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@","^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    static func createNavBar(_ navigationItem: UINavigationItem){
        let coinsCount = UIBarButtonItem(title: "",
                                         style: UIBarButtonItem.Style.plain,
                                             target: nil,
                                             action: nil)
        let profilePic = UIBarButtonItem(title: "",
                                         style: UIBarButtonItem.Style.plain,
                                             target: nil,
                                             action: nil)
        let appTitle = UIBarButtonItem(title: "",
                                       style: UIBarButtonItem.Style.plain,
                                           target: nil,
                                           action: nil)
        
        let profilePicView = UILabel(frame: CGRect(x:0, y:0, width: 30, height: 30))
        profilePicView.layer.cornerRadius = 15
        profilePicView.backgroundColor = UIColor(patternImage:UIImage(named:"AppIcon")!)
        profilePicView.layer.masksToBounds = true
        profilePic.customView = profilePicView
        
        
        let coinsCountView = UILabel(frame: CGRect(x:0, y:0, width: 80, height: 30))
        coinsCountView.layer.cornerRadius = 15
        coinsCountView.textAlignment = .center
        let attributedText = NSMutableAttributedString(string:"")
        coinsCountView.layer.masksToBounds = true
        let attachment = NSTextAttachment()
        attachment.image = UIImage(named:"coinStockImage")
        let iconsSize = CGRect(x: -5, y: -7, width: 25, height: 25)
        attachment.bounds = iconsSize
        attributedText.append(NSAttributedString(attachment:attachment))
        attributedText.append(NSAttributedString(string:"345"))
        coinsCountView.attributedText = attributedText
        coinsCountView.layer.borderWidth = 0.25
        coinsCountView.layer.borderColor = UIColor.gray.cgColor
        coinsCount.customView = coinsCountView
       
        let appTitleView = UILabel()
        appTitleView.text = "Sustainable Scotty"
        appTitleView.textColor = .darkGray
        appTitleView.font = .boldSystemFont(ofSize: 24)
        appTitle.customView = appTitleView
        
        navigationItem.rightBarButtonItems = [profilePic, coinsCount]
        navigationItem.leftBarButtonItem = appTitle
    }
}
