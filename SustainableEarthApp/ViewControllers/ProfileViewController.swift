//
//  ProfileViewController.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 4/4/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var editProfile: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editProfile.circleCorner()
        Utilities.createNavBar(navigationItem)

        // Do any additional setup after loading the view.
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
