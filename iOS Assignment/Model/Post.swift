//
//  Post.swift
//  iOS Assignment
//
//  Created by Georgios Kakouliadis on 18/7/22.
//

import Foundation

// MARK: - Response
struct Response<T: Decodable>: Decodable {
    let code: Int
    let meta: Meta
    let data: T
}

// MARK: - Datum
struct Datum: Decodable {
    let id, userID: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case id
        case userID = "user_id"
        case title, body
    }
}

// MARK: - Meta
struct Meta: Decodable {
    let pagination: Pagination
}

// MARK: - Pagination
struct Pagination: Decodable {
    let total, pages, page, limit: Int
}
