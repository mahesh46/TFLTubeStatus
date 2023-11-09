//
//  NetworkService.swift
//  dataFetching
//
//  Created by mahesh lad on 12/10/2023.
//

import Foundation


enum NetworkError: Error {
    case badURL
    case badData
}

protocol ServiceProtocol {
    func fetchData() async throws -> [TubeResult]?
}

class NetworkService : ServiceProtocol {
    var urlString: String!
    
    init(_ urlString: String? = nil ) {
        if urlString == nil {
            let defaultSite: String = "https://api.tfl.gov.uk/Line/Mode/Tube/Status"
            do {
                let site:String = try Configuration.value(for: "CT_API_URL")
                self.urlString = "https://" + site
            }  catch {
                self.urlString = defaultSite
            }
        } else {
            self.urlString = urlString
        }
    }
    
    func fetchData() async throws -> [TubeResult]? {
        guard let url = URL(string: self.urlString) else {
            print("This URL is not working!")
            throw NetworkError.badURL
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            guard let decodedResponse = try? JSONDecoder().decode([TubeResult].self, from: data) else {
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
