//
//  User.swift
//  DevApp
//
//  Created by Kojiro Ito on 2023/12/27.
//

import Foundation

struct User: Hashable, CustomStringConvertible {
    var id: Int
    
    let firstName: String
    let lastName: String
    let age: Int
    let mutualFriends: Int
    let imageName: String
    let occupation: String
    
    var description: String {
        return "\(firstName), id: \(id)"
    }
}
