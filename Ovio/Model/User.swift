//
//  User.swift
//  Ovio
//
//  Created by Tarun Sharma on 17/04/26.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    var fullName: String
    var email: String
    var profileImageUrl : String?
    
}

extension User {
    static let MOCK_USER = User(fullName: "Bruce Wayne", email: "batman@gmail.com", profileImageUrl: "batman1 1")
}
