//
//  UserViewModel.swift
//  dataFetching
//
//  Created by mahesh lad on 12/10/2023.
//

import Foundation

@MainActor
class TubeViewModel: ObservableObject{
    
    @Published var result : [TubeResult]?
    var serviceProtocol: ServiceProtocol
    
    init(serviceProtocol: ServiceProtocol ) {
        self.serviceProtocol = serviceProtocol
    }
    
    func getTubeStatus() async {
        do {
            let result = try await  self.serviceProtocol.fetchData()
            self.result = result
        } catch let error {
            print(error.localizedDescription)
        }
    }
   
}
