//
//  APIViewModel.swift
//  iOS Assignment
//
//  Created by Georgios Kakouliadis on 15/7/22.
//

import Foundation
import Combine
import Alamofire



//"https://jsonplaceholder.typicode.com"

final class APIViewModel: ObservableObject {
    
    private let baseUrl: String = "https://gorest.co.in/public-api/posts"
    private var task: Cancellable? = nil
    
    @Published var presenters: [PostPresenter] = []
    
    init() {
        
        self.fetchData()
        
    }
    
    private func fetchData() {
        
        self.task = AF.request(self.baseUrl, method: .get, parameters: nil)
               .publishDecodable(type: [Response].self)
                   .sink(receiveCompletion: { (completion) in
                       switch completion {
                       case .finished:
                           ()
                       case .failure(let error):
                           print(error)
                       }
                   }, receiveValue: { [weak self ] (response) in
                       switch response.result {
                       case .success(let model):                self?.presenters = model.map {PostPresenter(with: $0)}
                       case.failure(let error):
                            print(error)
                       }
                   })
        
    }
    
}
