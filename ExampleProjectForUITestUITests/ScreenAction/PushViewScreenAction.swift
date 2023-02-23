//
//  PushViewScreenAction.swift
//  ExampleProjectForUITestUITests
//
//  Created by Saran Nonkamjan on 23/2/2566 BE.
//

import XCTest

class PushViewScreenAction {
    private let pageObject: PushViewPageObject

    init(pageObject: PushViewPageObject) {
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
