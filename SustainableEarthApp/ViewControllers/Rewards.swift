//
//  Rewards.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import UIKit

class Rewards: UIViewController {
    
    @IBOutlet var wTurbinePU: UIView!
    @IBOutlet weak var blurView: UIView!
    @IBOutlet weak var purchaseWTurbine: UIButton!
    
    @IBAction func showWTurbinePU(_ sender: Any) {
        animateIn(desiredView: wTurbinePU)
        animateIn(desiredView: blurView)
    }
    
    @IBAction func purchaseTurbine(_ sender: Any) {
        print("HIIII")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blurView.bounds = self.view.bounds
        wTurbinePU.bounds = CGRect(x:0, y:0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.3)
        
        // Do any additional setup after loading the view.
    }
    
    func animateIn(desiredView: UIView) {
        let backgroundview = self.view!
        
        backgroundview.addSubview(desiredView)
        desiredView.transform =  CGAffineTransform(scaleX:1.2, y: 1.2)
        desiredView.alpha = 0
        desiredView.center = backgroundview.center
        UIView.animate(withDuration: 0.3, animations: {
            desiredView.transform = CGAffineTransform(scaleX:1.2, y: 1.2)
            desiredView.alpha = 1
        })
    }
    
    func animateOut(desiredView: UIView) {
        print("hello")
        UIView.animate(withDuration: 0.3, animations: {
            desiredView.transform = CGAffineTransform(scaleX:1.2, y: 1.2)
            desiredView.alpha = 0
        }, completion: { _ in
            desiredView.removeFromSuperview()
        })
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
