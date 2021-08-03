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
    @IBOutlet weak var labelCoins: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
<<<<<<< HEAD
    @IBOutlet weak var actionImage: UIImageView!

//    var action: actionData?
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        labelActionName.text = "\((action?.actionName)!)"
//        labelCoins.text = "\((action?.actionCoins)!)"
//        labelDescription.text = "\((action?.actionDescription)!)"
//        actionImage.image = UIImage(named:(action?.actionImageName)!)
//    
=======
    var action: actionData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelActionName.text = "\((action?.actionName)!)"
        labelCoins.text = "\((action?.actionCoins)!)"
        labelDescription.text = "\((action?.actionDescription)!)"
    
>>>>>>> parent of cb2ec17... unique images created
    

    

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


