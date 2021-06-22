//
//  DetailedActionVC.swift
//  SustainableEarthApp
//
//  Created by Charlotte Ng on 4/4/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit

class DetailedActionVC: UIViewController {
    
    @IBOutlet weak var labelActionName: UILabel!
    
    var action: actionData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelActionName.text = "\((action?.actionName)!)"
    
    

    

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
