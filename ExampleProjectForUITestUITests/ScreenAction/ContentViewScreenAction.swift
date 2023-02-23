//
//  ContentViewScreenAction.swift
//  ExampleProjectForUITestUITests
//
//  Created by Saran Nonkamjan on 23/2/2566 BE.
//

import XCTest

class ContentViewScreenAction {
    private let pageObject: ContentPageObject

    init(pageObject: ContentPageObject) {
        self.pageObject = pageObject
    }

    @discardableResult
    func clickPushView() -> Self {
        let pushButton = pageObject.pushButton
        XCTAssertTrue(pushButton.waitForExistence(timeout: 2))
        pushButton.tap()
        return self
    }

    @discardableResult
    func clickModalView() -> Self {
        let modalButton = pageObject.modalButton
        XCTAssertTrue(modalButton.waitForExistence(timeout: 2))
        modalButton.tap()
        return self
    }
}
