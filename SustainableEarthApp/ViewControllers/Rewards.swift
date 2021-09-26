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
        Utilities.createNavBar(navigationItem)

        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func windButtonPressed(_ sender: UIButton) {
        let vc = PopUpPurchase()
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
        vc.infoText.text = "This is the wind turbine popup"
        // self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        //purchaseImageView.image = #imageLiteral(resourceName: "wind1")
        
        
    }
    /*
    @IBAction func railButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "rewardsToPurchase", sender: self)
        
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
    */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
