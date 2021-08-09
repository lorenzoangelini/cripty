//
//  HomeViewModel.swift
//  Cripty
//
//  Created by Lorenzo Angelini on 31/07/21.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var assets: [Asset] = []
    @Published var isLoading: Bool = true
    
    
    var cancellationToken: AnyCancellable?
    var homePageServices = HomePageServices.shared
   
    func getAssets() {
        isLoading = true
        cancellationToken = homePageServices.getAssets()
                .mapError({ (error) -> Error in
                    print(error)
                    self.isLoading = false
                    return error
                })
                .sink(receiveCompletion: { _ in },
                      receiveValue: {
                        self.isLoading = false
                        self.assets = $0.assets
                })
        }
    
}
