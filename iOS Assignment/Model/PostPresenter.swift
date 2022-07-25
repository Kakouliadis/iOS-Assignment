//
//  PostPresenter.swift
//  iOS Assignment
//
//  Created by Georgios Kakouliadis on 25/7/22.
//

import Foundation

struct PostPresenter: Identifiable {

    let id = UUID()
    let data: [Datum]

    init(with response: Response) {
        self.data = response.data

    }
}
