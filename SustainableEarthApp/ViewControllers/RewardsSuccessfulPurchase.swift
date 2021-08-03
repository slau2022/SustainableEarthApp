//
//  RewardsSuccessfulPurchase.swift
//  SustainableEarthApp
//
//  Created by Katie Hart on 7/11/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit
import Firebase


class RewardsSuccessfulPurchase: UIViewController {
    
    @IBOutlet weak var purchasedImage: UIImageView!
    
    var imageDict:[String:UIImage] = ["wind":#imageLiteral(resourceName: "wind1"), "rail":#imageLiteral(resourceName: "rail1"), "office": #imageLiteral(resourceName: "office1"), "skyscraper": #imageLiteral(resourceName: "skyscraper1"), "market": #imageLiteral(resourceName: "farmersmarket1"), "hotel": #imageLiteral(resourceName: "hotel1"), "ev": #imageLiteral(resourceName: "ev1"), "housing": #imageLiteral(resourceName: "housing1"), "bike": #imageLiteral(resourceName: "bike1"), "restaurant": #imageLiteral(resourceName: "restaurant1"), "solar": #imageLiteral(resourceName: "solar1"), "farm": #imageLiteral(resourceName: "farm1"), "grocery": #imageLiteral(resourceName: "grocery1"), "park": #imageLiteral(resourceName: "park1"), "fountain": #imageLiteral(resourceName: "fountain1")]
    
    private let newPurchaseImageName: String
    
    init(newPurchaseImageName: String) {
        self.newPurchaseImageName = newPurchaseImageName
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
