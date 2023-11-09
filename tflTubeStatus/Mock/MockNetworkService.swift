//
//  MockNetworkService.swift
//  tflTubeStatus
//
//  Created by mahesh lad on 07/11/2023.
//

import Foundation

class MockNetworkService : ServiceProtocol {
    
    func fetchData() async throws -> [TubeResult]? {
        
        guard let url = Bundle.main.url(forResource: "MockTubeStatus", withExtension: "json")
        else {
            print("json file not found")
            throw NetworkError.badData
        }
        
        do {
            let data = try? Data(contentsOf: url)
            guard let decodedResponse = try? JSONDecoder().decode([TubeResult].self, from: data!)
            else {
                print(" Error in translating data")
                throw NetworkError.badData
            }
            return decodedResponse
        } catch {
            print("These data are not valid")
            throw NetworkError.badData
        }
        
    }
}
