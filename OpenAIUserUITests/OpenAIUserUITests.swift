//
//  OpenAIUserUITests.swift
//  OpenAIUserUITests
//
//  Created by Nick Lavrov on 07.03.2024.
//

import XCTest

final class OpenAIUserUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
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
    
    func testEnteringApiKey() {
        let app = XCUIApplication()
        
        // Assuming there's a TextField for entering the API key and it's identifiable by accessibilityID or label
        let apiKeyTextField = app.textFields["API KEY"]
        XCTAssertTrue(apiKeyTextField.exists, "The API Key TextField should be present")
        
        apiKeyTextField.tap()
        apiKeyTextField.typeText("testApiKey\n") // Typing the API key and pressing return
        
        // Assuming setting the API key changes the UI in a verifiable way, e.g., HomeScreen appears
        // You'll need to adjust this to fit your actual UI and what's verifiable after setting the API key
        let homeScreenLabel = app.staticTexts["HomeScreenLabelIdentifier"]
        XCTAssertTrue(homeScreenLabel.exists, "HomeScreen should be present after setting API key")
    }

    func testLaunchPerformance() throws {
        if #available(iOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
