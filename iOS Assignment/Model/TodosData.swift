//
//  TodosData.swift
//  iOS Assignment
//
//  Created by Georgios Kakouliadis on 27/7/22.
//

import Foundation

// MARK: - DatumTodos
struct DatumTodos: Codable {
    let id, userID: Int
    let title, dueOn: String
    let status: DatumTodos.Status
    
    enum CodingKeys: String, CodingKey {
        case id
        case userID = "user_id"
        case title
        case dueOn = "due_on"
        case status
    }
}

extension DatumTodos {
    
    enum Status: String, Codable {
        case completed = "completed"
        case pending = "pending"
    }
    
}
