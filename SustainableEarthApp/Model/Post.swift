//
//  Post.swift
//  SustainableEarthApp
//
//  Created by Bahl, Shreya on 7/10/21.
//  Copyright © 2021 Sophia Lau. All rights reserved.
//

import Foundation

struct Post: Encodable, Decodable {
    let ownerId: String
    let postId: String
    let username: String
    let mediaURL: String
    let date: Double
}
