//
//  tflTubeStatusUITests.swift
//  tflTubeStatusUITests
//
//  Created by mahesh lad on 07/11/2023.
//

import XCTest

final class tflTubeStatusUITests: XCTestCase {
    private var app: XCUIApplication!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        //continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        app = XCUIApplication()
      
        continueAfterFailure = false
        app.launchEnvironment = ["ENV": "TEST"]
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func test_show_reason_for_delay() {
        
        let app = XCUIApplication()
        app.navigationBars["Tube Status"].staticTexts["Tube Status"].tap()
        
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Circle"]/*[[".cells",".buttons[\"Circle\"].staticTexts[\"Circle\"]",".staticTexts[\"Circle\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let circleButton = collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Circle"]/*[[".cells.buttons[\"Circle\"]",".buttons[\"Circle\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        circleButton.staticTexts["Minor Delays"].tap()
        
        let circleLineMinorDelaysDueToAnEarlierFaultyTrainAtAldgateStaticText = collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Circle Line: Minor delays due to an earlier faulty train at Aldgate. "]/*[[".cells",".buttons[\"Circle\"].staticTexts[\"Circle Line: Minor delays due to an earlier faulty train at Aldgate. \"]",".staticTexts[\"Circle Line: Minor delays due to an earlier faulty train at Aldgate. \"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        circleLineMinorDelaysDueToAnEarlierFaultyTrainAtAldgateStaticText.tap()
        circleLineMinorDelaysDueToAnEarlierFaultyTrainAtAldgateStaticText.swipeUp()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Central"]/*[[".cells",".buttons[\"Central\"].staticTexts[\"Central\"]",".staticTexts[\"Central\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Central"]/*[[".cells.buttons[\"Central\"]",".buttons[\"Central\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Good Service"].tap()
        circleLineMinorDelaysDueToAnEarlierFaultyTrainAtAldgateStaticText.swipeUp()
        circleButton.swipeUp()
        circleLineMinorDelaysDueToAnEarlierFaultyTrainAtAldgateStaticText.swipeUp()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["District"]/*[[".cells.buttons[\"District\"]",".buttons[\"District\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Good Service"].swipeUp()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Hammersmith & City"]/*[[".cells",".buttons[\"Hammersmith & City\"].staticTexts[\"Hammersmith & City\"]",".staticTexts[\"Hammersmith & City\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Hammersmith & City"]/*[[".cells.buttons[\"Hammersmith & City\"]",".buttons[\"Hammersmith & City\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.staticTexts["Minor Delays"].tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Hammersmith and City Line: Minor delays due to train cancellations. "]/*[[".cells",".buttons[\"Hammersmith & City\"].staticTexts[\"Hammersmith and City Line: Minor delays due to train cancellations. \"]",".staticTexts[\"Hammersmith and City Line: Minor delays due to train cancellations. \"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        
    }
    
//    func test_should_display_error_message_for_invalid_credentials() {
//        
//        let usernameTextField = loginPageObject.usernameTextField
//        usernameTextField.tap()
//        usernameTextField.typeText("JohnDoe")
//        
//        let passwordTextField = loginPageObject.passwordTextField
//        passwordTextField.tap()
//        passwordTextField.typeText("WrongPassword")
//        
//        let loginButton = loginPageObject.loginButton
//        loginButton.tap()
//        
//        let messageText = loginPageObject.messageText
//        XCTAssertEqual(messageText.label, "Invalid credentials")
//        
//    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
