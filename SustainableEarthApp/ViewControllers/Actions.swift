//
//  Actions.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import UIKit

class Actions: UIViewController {
    
    @IBOutlet weak var favoritesButton: UIButton!
    @IBOutlet weak var energyButton: UIButton!
    @IBOutlet weak var waterButton: UIButton!
    @IBOutlet weak var recycleButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    var messages: [Message] = [
        Message(action: "Refill Reusable Waterbottle", logged: "Times Logged: 15"),
        Message(action: "Brought Reusable Mug", logged: "Times Logged: 10"),
        Message(action: "Compost at Schatz", logged: "Times Logged: 15")
    ]
    func resizeImage(image: UIImage, scale: CGFloat) -> UIImage {
        let newWidth = image.size.width * scale
       let newHeight = image.size.height * scale
        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
        image.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()!
       UIGraphicsEndImageContext()

       return newImage
   }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: Constants.cellNibName, bundle: nil), forCellReuseIdentifier: Constants.cellIdentifier)
        
        Utilities.createNavBar(navigationItem)

        
//        loadActions()
        
        
    // Do any additional setup after loading the view.
    }
    
//    func loadActions() {
//       messages = []
//
//        db.collection(Constants.FStore.collectionName).getDocuments { (querySnapshot, error) in
//            if let e = error {
//                print("there was an issue retrieving data from firestore. \(e)")
//            } else {
//                query
//            }
//
//        }
        
    }
    // MARK: Actions
   
    //change favorites button image when clicked
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */




extension Actions: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath) as! MessageCell
        cell.label.text = messages[indexPath.row].action
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
    }
    
}
