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
        
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "wind1")
        
        
    }
    
    @IBAction func railButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "rail1")
    }
    
    @IBAction func officeButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "office1")
    }
    
    @IBAction func skyscraperButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "skyscraper1")
    }
    
    @IBAction func farmersButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "farmersmarket1")
    }
    
    @IBAction func hotelButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "hotel1")
    }
    
    @IBAction func evButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "ev1")
    }
    
    @IBAction func housingButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
       // rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "housing1")
    }
    
    @IBAction func bikeButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "bike1")
    }
    
    @IBAction func restaurantButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "restaurant1")
    }
    
    @IBAction func solarButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "solar1")
    }
    
    @IBAction func farmButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "farm1")
    }
    
    @IBAction func groceryButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "grocery1")
    }
    
    @IBAction func parkButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
       // rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "Public Park")
    }
    
    @IBAction func fountainButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //rpWindow.purchaseImageView.image = #imageLiteral(resourceName: "fountain1")
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
