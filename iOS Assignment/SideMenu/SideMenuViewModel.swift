//
//  SideMenuViewModel.swift
//  iOS Assignment
//
//  Created by Georgios Kakouliadis on 14/7/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable, Decodable {
    case Home
    case Users
    case TODOs
    case AboutUs
    
    var title: String {
        switch self {
        case .Home: return "Home"
        case .Users: return "Users"
        case .TODOs: return "TODOs"
        case .AboutUs: return "AboutUs"
        }
    
    }
    var imageName: String {
        switch self {
        case .Home: return "bookmark.circle"
        case .Users: return "person"
        case .TODOs: return "list.bullet"
        case .AboutUs: return "info.circle"
        }
    }
}
