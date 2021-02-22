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

    @IBAction func windButtonPressed(_ sender: UIButton) {
        
        //popUpImageView.image = #imageLiteral(resourceName: "wind1")
        // purchaseImageView.image = #imageLiteral(resourceName: "wind1")
        
        
        
        
        
    }
    
    @IBAction func railButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func officeButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func skyscraperButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func farmersButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func hotelButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func evButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func housingButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
       
    }
    
    @IBAction func bikeButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func restaurantButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
    }
    
    @IBAction func solarButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
    }
    
    @IBAction func farmButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
    }
    
    @IBAction func groceryButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
    }
    
    @IBAction func parkButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
    }
    
    @IBAction func fountainButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
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
