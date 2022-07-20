//
//  Post.swift
//  iOS Assignment
//
//  Created by Georgios Kakouliadis on 18/7/22.
//

import Foundation

// MARK: - Response
struct Response: Codable {
    let code: Int
    let meta: Meta
    let data: [Datum]
}

// MARK: - Datum
struct Datum: Codable {
    let id, userID: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case id
        case userID = "user_id"
        case title, body
    }
}

// MARK: - Meta
struct Meta: Codable {
    let pagination: Pagination
}

// MARK: - Pagination
struct Pagination: Codable {
    let total, pages, page, limit: Int
}
