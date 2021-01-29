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
        let rpWindow = RewardsPurchaseWindow()
        self.present(rpWindow, animated: true, completion: nil)
        // purchaseImageView.image = #imageLiteral(resourceName: "wind1")
        
        
    }
    
    @IBAction func railButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func officeButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func skyscraperButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func farmersButtonPressed(_ sender: Any) {
    }
    
    @IBAction func hotelButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func evButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func housingButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func bikeButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func restaurantButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func solarButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func farmButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func groceryButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func parkButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func fountainButtonPressed(_ sender: UIButton) {
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
