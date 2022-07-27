//
//  UsersData.swift
//  iOS Assignment
//
//  Created by Georgios Kakouliadis on 27/7/22.
//

import Foundation

// MARK: - DatumUsers
struct UserData: Decodable {
    let id: Int
    let name, email: String
    let gender: Gender
    let status: UserData.Status
}

enum Gender: String, Codable {
    case female = "female"
    case male = "male"
}

extension UserData {
    enum Status: String, Codable {
        case active = "active"
        case inactive = "inactive"
    }
}
