//
//  Rewards.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import UIKit

class Rewards: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func windButtonPressed(_ sender: UIButton) {
        print("hi")
        let vc = RewardsPurchaseWindow(purchaseImageName: "wind")
        present(vc, animated: true)
        
        
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //purchaseImageView.image = #imageLiteral(resourceName: "wind1")
        
        
    }
    
    @IBAction func railButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "rail")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func officeButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "office")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func skyscraperButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "skyscraper")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func farmersButtonPressed(_ sender: Any) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "market")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func hotelButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "hotel")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func evButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "ev")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func housingButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "housing")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
       
    }
    
    @IBAction func bikeButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "bike")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func restaurantButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "restaurant")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func solarButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "solar")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
    }
    
    @IBAction func farmButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "farm")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
    }
    
    @IBAction func groceryButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "grocery")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
    }
    
    @IBAction func parkButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "park")
        present(vc, animated: true)
//        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
    }
    
    @IBAction func fountainButtonPressed(_ sender: UIButton) {
        let vc = RewardsPurchaseWindow(purchaseImageName: "fountain")
        present(vc, animated: true)
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
