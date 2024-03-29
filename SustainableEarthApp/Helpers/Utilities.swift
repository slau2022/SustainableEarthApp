//
//  Utilities.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class Utilities {
    
    static func isPasswordValid(_ password: String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@","^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }

    static func setUpCoins()-> Int{
        let db = Firestore.firestore()
        let userDoc = UserDefaults.standard.string(forKey: "userEmail") ?? "Error retrieving user"
        print(userDoc)
        let docRef = db.collection("users").document(userDoc)
        var numCoins = 0
        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let coinAmount = document.get("coins")
                if (coinAmount as? NSNumber) != nil
                {
                    numCoins = coinAmount as! Int
                }
            } else {
                print("Document does not exist")
            }
        }
        return numCoins
    }
    
    static func createNavBar(_ navigationItem: UINavigationItem){
        // set up the Nav Bar Items
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
        
        // set up the profile picture
        let profilePicView = UILabel(frame: CGRect(x:0, y:0, width: 30, height: 30))
        profilePicView.layer.cornerRadius = 15
        profilePicView.backgroundColor = UIColor(patternImage:UIImage(named:"AppIcon")!)
        profilePicView.layer.masksToBounds = true
        profilePic.customView = profilePicView
        
        // set up the coin count
        let numCoins = self.setUpCoins()
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
        attributedText.append(NSAttributedString(string: String(numCoins)))
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
