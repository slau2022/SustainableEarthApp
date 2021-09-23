//
//  PostService.swift
//  SustainableEarthApp
//
//  Created by Bahl, Shreya on 7/11/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import Foundation
import Firebase
import FirebaseStorage
import FirebaseAuth
import FirebaseFirestore

class PostService {
    static var storage = Storage.storage()
    static var storageRoot = storage.reference()
    static var storagePost = storageRoot.child("Posts")
    static var storeRoot = Firestore.firestore()
    static var posts = storeRoot.collection("Posts")
    static var allPosts = storeRoot.collection("AllPosts")
    
    static func storagePostId(postId: String) -> StorageReference {
        return storagePost.child(postId)
    }
    
    static func postUserId(userId: String) -> DocumentReference {
        return posts.document(userId)
    }
    
    //Upload image to cloud
    static func uploadPost(imageData: Data, onSuccess: @escaping()-> Void, onError: @escaping(_ errorMessage: String) -> Void) {
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }
        let postId = postUserId(userId: userId).collection("posts").document().documentID
        let storagePostRef = storagePostId(postId: postId)
        let metadata = StorageMetadata()
        metadata.contentType = "image/jpg"
        
        savePostPhoto(userId: userId, postId: postId, imageData: imageData, metadata: metadata, storagePostRef: storagePostRef, onSuccess: onSuccess, onError: onError)
    }
    
    static func savePostPhoto(userId: String, postId: String, imageData: Data, metadata: StorageMetadata, storagePostRef: StorageReference, onSuccess: @escaping() -> Void, onError: @escaping(_ errorMessage:String) -> Void) {
        storagePostRef.putData(imageData,  metadata: metadata) {
            (StorageMetadata, error) in
            if error != nil {
                onError(error!.localizedDescription)
                return
            }
            storagePostRef.putData(imageData, metadata: metadata){
                (StorageMetadata, error) in
                if error != nil {
                    onError(error!.localizedDescription)
                    return
                }
                storagePostRef.downloadURL {
                    (url, error) in
                    if let metaImageURL = url?.absoluteString {
                        let firestorePostRef = postUserId(userId: userId).collection("Posts").document(postId)
                        
                        let post = Post.init(ownerId: userId, postId: postId, username: Auth.auth().currentUser!.displayName!, mediaURL: metaImageURL, date: Date().timeIntervalSince1970)
                        guard let dict = try? post.asDictionary() else {return}
                        
                        firestorePostRef.setData(dict) {
                            (error) in
                            if error != nil {
                                onError(error!.localizedDescription)
                                return
                            }
                            allPosts.document(postId).setData(dict)
                            posts.document(postId).setData(dict)
                            
                            onSuccess()
                        }
                    }
                }
            }
        }
    }
}
