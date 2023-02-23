//
//  ExampleUITests.swift
//  ExampleProjectForUITestUITests
//
//  Created by Saran Nonkamjan on 23/2/2566 BE.
//

import XCTest

final class ExampleUITests: XCTestCase {
    let app: XCUIApplication = .init()

    override func setUpWithError() throws {
        continueAfterFailure = true

        app.launch()
    }

    func test_MainView_ClickPushView_Then_ClickButtonInPushView_ShowMessage_isClick() {
        let pushButton = app.buttons["contentview_push"]
        XCTAssertTrue(pushButton.waitForExistence(timeout: 2))
        pushButton.tap()

        let clickButton = app.buttons["pushview_button"]
        XCTAssertTrue(clickButton.waitForExistence(timeout: 2))
        clickButton.tap()

        let message = app.staticTexts["pushview_name"]
        XCTAssertTrue(message.waitForExistence(timeout: 2))
        XCTAssertEqual(message.label, "is Click")
    }

    func test_MainView_ClickModalView_Then_InputUsername_ClickButton_ShowMessageSameUsername() {
        let modalButton = app.buttons["contentview_modal"]
        XCTAssertTrue(modalButton.waitForExistence(timeout: 2))
        modalButton.tap()

        let usernameTextField = app.textFields["modalview_textfield"]
        XCTAssertTrue(modalButton.waitForExistence(timeout: 2))
        usernameTextField.tap()
        sleep(1)
        usernameTextField.typeText("user")

        let clickButton = app.buttons["modalview_button"]
        XCTAssertTrue(clickButton.waitForExistence(timeout: 2))
        clickButton.tap()

        let message = app.staticTexts["modalview_username"]
        XCTAssertTrue(message.waitForExistence(timeout: 2))
        XCTAssertEqual(message.label, "user")
    }
}
