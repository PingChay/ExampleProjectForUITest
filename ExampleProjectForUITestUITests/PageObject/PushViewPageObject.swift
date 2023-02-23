//
//  PushViewPageObject.swift
//  ExampleProjectForUITestUITests
//
//  Created by Saran Nonkamjan on 23/2/2566 BE.
//

import XCTest

class PushViewPageObject {
    private let app: XCUIApplication

    init(app: XCUIApplication) {
        self.app = app
    }

    var titleText: XCUIElement {
        app.staticTexts["pushview_text"]
    }

    var clickButton: XCUIElement {
        app.buttons["pushview_button"]
    }

    var messageText: XCUIElement {
        app.staticTexts["pushview_name"]
    }
}
