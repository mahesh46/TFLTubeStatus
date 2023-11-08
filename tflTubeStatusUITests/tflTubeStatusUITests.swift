//
//  tflTubeStatusUITests.swift
//  tflTubeStatusUITests
//
//  Created by mahesh lad on 07/11/2023.
//

import XCTest

final class tflTubeStatusUITests: XCTestCase {
    private var app: XCUIApplication!

    
    override func setUp() {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launchEnvironment = ["ENV": "TEST"]
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

   

    
    func test_show_mock_data_tube_status() {
        
        let nativationHeading = app.navigationBars["Tube Status"].staticTexts["Tube Status"]
        
        XCTAssert(nativationHeading.exists)
        
        let collectionViewsQuery = app.collectionViews
        let bakerlooLineCell = collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Bakerloo"]/*[[".cells",".buttons[\"Bakerloo\"].staticTexts[\"Bakerloo\"]",".staticTexts[\"Bakerloo\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        
        XCTAssert(bakerlooLineCell.exists)
        
        let bakerlooServiceStatus = collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Bakerloo"]/*[[".cells.buttons[\"Bakerloo\"]",".buttons[\"Bakerloo\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Good Service"]
        XCTAssert(bakerlooServiceStatus.exists)
        
        let centalLineCell = collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Central"]/*[[".cells",".buttons[\"Central\"].staticTexts[\"Central\"]",".staticTexts[\"Central\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        XCTAssert(centalLineCell.exists)
        
        let centalLineServiceStatus = collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Central"]/*[[".cells.buttons[\"Central\"]",".buttons[\"Central\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Good Service"]
        XCTAssert(centalLineServiceStatus.exists)
        
        let goodServiceStaticText = collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Metropolitan"]/*[[".cells.buttons[\"Metropolitan\"]",".buttons[\"Metropolitan\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Good Service"]
        XCTAssert(goodServiceStaticText.exists)
        
        goodServiceStaticText.swipeUp()
       
       
        let hammersmithDistrictline = collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Hammersmith & City"]/*[[".cells",".buttons[\"Hammersmith & City\"].staticTexts[\"Hammersmith & City\"]",".staticTexts[\"Hammersmith & City\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        XCTAssert(hammersmithDistrictline.exists)
        let hammersmithDistrictlineService = collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Hammersmith & City"]/*[[".cells.buttons[\"Hammersmith & City\"]",".buttons[\"Hammersmith & City\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Minor Delays"]
        XCTAssert(hammersmithDistrictlineService.exists)
        
        let hammersmithDistrictlineServiceReason = collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Hammersmith and City Line: Minor delays due to train cancellations. "]/*[[".cells",".buttons[\"Hammersmith & City\"].staticTexts[\"Hammersmith and City Line: Minor delays due to train cancellations. \"]",".staticTexts[\"Hammersmith and City Line: Minor delays due to train cancellations. \"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        XCTAssert(hammersmithDistrictlineServiceReason .exists)
        
    }
    
}
