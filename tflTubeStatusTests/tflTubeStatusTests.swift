//
//  tflTubeStatusTests.swift
//  tflTubeStatusTests
//
//  Created by mahesh lad on 07/11/2023.
//

import XCTest
@testable import tflTubeStatus

final class NetworkServiceTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // A test case that checks if the network service can fetch valid data
    func testFetchDataSuccess() async throws {
        // given
        let networkService = NetworkService()
        // then
        let expectation = XCTestExpectation(description: "Expect network service to fetch data")
        Task {
            do {
                let data = try await networkService.fetchData()
                XCTAssertNotNil(data)
                expectation.fulfill()
            } catch  {
                // Assert
                XCTFail()
                expectation.fulfill()
            }
        }
    }
    
    
    
    
    func testFetchDataBadURL() throws {
        // Arrange given
        let networkService = NetworkService("http://ww")
        // then
        let expectation = XCTestExpectation(description: "Expect network service to throw badURL error")
        
        // Act
        Task {
            do {
                _ = try await networkService.fetchData()
                XCTFail("Network service did not throw an error")
            } catch {
                // Assert
                XCTAssertEqual(error as? NetworkError, .badURL)
                expectation.fulfill()
            }
        }
        
    }
    
    
    // A test case that checks if the network service throws an error for bad data
    func testFetchDataBadData() async throws {
        // Arrange given
        let networkService = NetworkService("http://www.google.com")
        // Arrange
        let expectation = XCTestExpectation(description: "Expect network service to throw badData error")
        
        // Act
        Task {
            do {
                _ = try await networkService.fetchData()
                
            } catch {
                // Assert
                XCTAssertEqual(error as? NetworkError, .badData)
                expectation.fulfill()
            }
        }
        
    }
    
}
