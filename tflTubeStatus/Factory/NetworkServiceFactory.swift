//
//  NetworkServiceFactory.swift
//  tflTubeStatus
//
//  Created by mahesh lad on 07/11/2023.
//

import Foundation

class NetworkServiceFactory {
    static func create() -> ServiceProtocol {
        let environment = ProcessInfo.processInfo.environment["ENV"]
        
        if let environment = environment {
            if environment == "TEST" {
                return MockNetworkService()
            } else {
                return NetworkService()
            }
        } else {
            return NetworkService()
        }
    }
    
}
