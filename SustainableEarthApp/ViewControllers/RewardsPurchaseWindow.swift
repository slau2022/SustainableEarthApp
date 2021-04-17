//
//  RewardsPurchaseWindow.swift
//  SustainableEarthApp
//
//  Created by Katie Hart on 1/28/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit

class RewardsPurchaseWindow: UIViewController {

   
    @IBOutlet weak var purchaseButton: UIButton!
   
    @IBOutlet weak var purchaseImageView: UIImageView!
    
    var imageDict:[String:UIImage] = ["wind":#imageLiteral(resourceName: "wind1"), "rail":#imageLiteral(resourceName: "rail1"), "office": #imageLiteral(resourceName: "office1"), "skyscraper": #imageLiteral(resourceName: "skyscraper1"), "market": #imageLiteral(resourceName: "farmersmarket1"), "hotel": #imageLiteral(resourceName: "hotel1"), "ev": #imageLiteral(resourceName: "ev1"), "housing": #imageLiteral(resourceName: "housing1"), "bike": #imageLiteral(resourceName: "bike1"), "restaurant": #imageLiteral(resourceName: "restaurant1"), "solar": #imageLiteral(resourceName: "solar1"), "farm": #imageLiteral(resourceName: "farm1"), "grocery": #imageLiteral(resourceName: "grocery1"), "park": #imageLiteral(resourceName: "park1"), "fountain": #imageLiteral(resourceName: "fountain1")]
   
    private let purchaseImageName: String
    
    init(purchaseImageName: String) {
        self.purchaseImageName = purchaseImageName
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        for (key, value) in imageDict {
            print(key, value)
            if purchaseImageName == key { purchaseImageView.image = value
            }
        }
    
        
    
    }
    
    
    
    
    

}
    
    
    /*
    // MARK: - Navigation
     
     var showAffordableHousing: Bool = false
     var showWind: Bool = false
     var showRail: Bool = false
     var showOffice: Bool = false
     var showSkyscraper: Bool = false
     var showFarmersMarket: Bool = false
     var showHotel: Bool = false
     var showEv: Bool = false
     var showRestaruant: Bool = false
     var showSolar: Bool = false
     var showFarm: Bool = false
     var showGrocery: Bool = false
     var showPark: Bool = false
     var showFountain: Bool = false
     var showBike: Bool = false
     
     
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         if showAffordableHousing {
             purchaseImageView.image = #imageLiteral(resourceName: "housing1")
             
         }
         if showWind {
             purchaseImageView.image = #imageLiteral(resourceName: "wind1")
             
         }
         if showRail {
             purchaseImageView.image = #imageLiteral(resourceName: "rail1")
             
         }
         if showOffice {
             purchaseImageView.image = #imageLiteral(resourceName: "office1")
             
         }
         if showSkyscraper {
             purchaseImageView.image = #imageLiteral(resourceName: "skyscraper1")
             
         }
         if showFarmersMarket {
             purchaseImageView.image = #imageLiteral(resourceName: "farmersmarket1")
             
         }
         if showHotel {
             purchaseImageView.image = #imageLiteral(resourceName: "hotel1")
             
         }
         if showEv {
             purchaseImageView.image = #imageLiteral(resourceName: "ev1")
             
         }
         if showRestaruant {
             purchaseImageView.image = #imageLiteral(resourceName: "restaurant1")
             
         }
         if showSolar {
             purchaseImageView.image = #imageLiteral(resourceName: "solar1")
             
         }
         if showFarm {
             purchaseImageView.image = #imageLiteral(resourceName: "farm1")
             
         }
         if showGrocery {
             purchaseImageView.image = #imageLiteral(resourceName: "grocery1")
             
         }
         if showPark {
             purchaseImageView.image = #imageLiteral(resourceName: "park1")
             
         }
         if showFountain {
             purchaseImageView.image = #imageLiteral(resourceName: "fountain1")
             
         }
         if showBike{
             purchaseImageView.image = #imageLiteral(resourceName: "bike1")
             
         }

     }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

// }
