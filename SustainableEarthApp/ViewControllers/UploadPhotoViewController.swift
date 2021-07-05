//
//  UploadPhotoViewController.swift
//  SustainableEarthApp
//
//  Created by Bahl, Shreya on 7/5/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import UIKit
import Photos
import FirebaseStorage
import Firebase
import FirebaseStorageUI

class UploadPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageDisplay: UIImageView!
    var picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        picker.delegate = self
    }
    

    @IBAction func uploadImagePressed(_ sender: Any) {
        self.picker.sourceType = .photoLibrary
        self.present(self.picker, animated: true, completion: nil)
    }
    
    @IBAction func postImagePressed(_ sender: Any) {
        let storage = Storage.storage()
        let storageRef = storage.reference()
        
        let ref = storageRef.child("UploadedPhoto1")
        imageDisplay.sd_setImage(with: ref)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let url = info[UIImagePickerController.InfoKey.imageURL] as? URL {
            print(url)
            uploadToCloud(fileURL: url)
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    func uploadToCloud(fileURL: URL) {
        let storage = Storage.storage()
        let data = Data()
        let storageRef = storage.reference()
        let localFile = fileURL
        let photoRef = storageRef.child("UploadedPhoto1")
        let uploadTask = photoRef.putFile(from: localFile, metadata: nil) { (metadata, err) in
            guard let metadata = metadata else {
                print(err?.localizedDescription)
                return
            }
            print("Photo Uploaded")
        }
    }

}
