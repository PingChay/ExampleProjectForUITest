//
//  ModalViewScreenAction.swift
//  ExampleProjectForUITestUITests
//
//  Created by Saran Nonkamjan on 23/2/2566 BE.
//

import XCTest

class ModalViewScreenAction {
    private let pageObject: ModalViewPageObject

    init(pageObject: ModalViewPageObject) {
        self.pageObject = pageObject
    }

    @discardableResult
    func checkTitle(text: String) -> Self {
        let titleText = pageObject.titleText
        XCTAssertTrue(titleText.waitForExistence(timeout: 2))
        XCTAssertEqual(titleText.label, text)
        return self
    }

    @discardableResult
    func inputUsername(text: String) -> Self {
        let usernameTextField = pageObject.usernameTextField
        XCTAssertTrue(usernameTextField.waitForExistence(timeout: 2))
        usernameTextField.tap()
        sleep(1)
        usernameTextField.typeText(text)
        return self
    }

    @discardableResult
    func tappedClick() -> Self {
        let clickButton = pageObject.clickButton
        XCTAssertTrue(clickButton.waitForExistence(timeout: 2))
        clickButton.tap()
        return self
    }

    @discardableResult
    func checkMessage(text: String) -> Self {
        let messageText = pageObject.messageText
        XCTAssertTrue(messageText.waitForExistence(timeout: 2))
        XCTAssertEqual(messageText.label, text)
        return self
    }
}
