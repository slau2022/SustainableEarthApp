//
//  ProfileViewController.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 4/4/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore
import FirebaseAuth

class ProfileViewController: UIViewController, UICollectionViewDataSource {

    @IBOutlet weak var editProfile: UIButton!
    @IBOutlet weak var imageCollection: UICollectionView!
    var images = [UIImage]()
    var customImageFlowLayout: CustomImageFlowLayout!
    //var db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editProfile.circleCorner()
        Utilities.createNavBar(navigationItem)

        // Do any additional setup after loading the view.
        loadImages()
//        var email = Auth.auth().currentUser!.email!
//        var dbRef = db.collection("posts/"+email)
        customImageFlowLayout = CustomImageFlowLayout()
        imageCollection.collectionViewLayout = customImageFlowLayout
        imageCollection.backgroundColor = .white
    }
    
    func loadImages() {
        images.append(UIImage(named: "AppIcon")!)
        images.append(UIImage(named: "AppIcon")!)
        images.append(UIImage(named: "AppIcon")!)
        images.append(UIImage(named: "AppIcon")!)
        self.imageCollection.reloadData()
    }
    
    func collectionView(_ imageCollection: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func collectionView(_ imageCollection: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imageCollection.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ImageCollectionViewCell
        let image = images[indexPath.row]
        cell.imageView.image = image
        return cell
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
