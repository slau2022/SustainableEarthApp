//
//  Rewards.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import UIKit

class Rewards: UIViewController {
    
    @IBOutlet weak var popUpImageView: UIImageView!
    
    @IBOutlet weak var purchaseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
        
        // Do any additional setup after loading the view.
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "rewardsToPurchase" {
//            let popup = segue.destination as! RewardsPurchaseWindow
//            popup.showAffordableHousing = true
//
//
//        }
//
//    }

    @IBAction func windButtonPressed(_ sender: UIButton) {
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showWind = true
        self.present(popup, animated: true)
        //popUpImageView.image = #imageLiteral(resourceName: "wind1")
        // purchaseImageView.image = #imageLiteral(resourceName: "wind1")
        
        
        
        
        
    }
    
    @IBAction func railButtonPressed(_ sender: UIButton) {
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showRail = true
        self.present(popup, animated: true)
        
    }
    
    @IBAction func officeButtonPressed(_ sender: UIButton) {
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showOffice = true
        self.present(popup, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func skyscraperButtonPressed(_ sender: UIButton) {
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showSkyscraper = true
        self.present(popup, animated: true)
        
    }
    
    @IBAction func farmersButtonPressed(_ sender: Any) {
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showFarmersMarket = true
        self.present(popup, animated: true)
        
    }
    
    @IBAction func hotelButtonPressed(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showHotel = true
        self.present(popup, animated: true)
        
    }
    
    @IBAction func evButtonPressed(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showEv = true
        self.present(popup, animated: true)
        
    }
    
    @IBAction func housingButtonPressed(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showAffordableHousing = true
        self.present(popup, animated: true)
       
    }
    
    @IBAction func bikeButtonPressed(_ sender: UIButton) {
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showBike = true
        self.present(popup, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func restaurantButtonPressed(_ sender: UIButton) {
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showRestaruant = true
        self.present(popup, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func solarButtonPressed(_ sender: UIButton) {
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showSolar = true
        self.present(popup, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
    }
    
    @IBAction func farmButtonPressed(_ sender: UIButton) {
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showFarm = true
        self.present(popup, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
    }
    
    @IBAction func groceryButtonPressed(_ sender: UIButton) {
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showGrocery = true
        self.present(popup, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
    }
    
    @IBAction func parkButtonPressed(_ sender: UIButton) {
        let sb = UIStoryboard(name: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showPark = true
        self.present(popup, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
    }
    
    @IBAction func fountainButtonPressed(_ sender: UIButton) {
        let sb = UIViewController(nibName: "RewardsPurchaseWindow", bundle: nil)
        let popup = sb.instantiateInitialViewController()! as! RewardsPurchaseWindow
        popup.showFountain = true
        self.present(popup, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
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
