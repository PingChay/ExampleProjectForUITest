//
//  ModalViewPageObject.swift
//  ExampleProjectForUITestUITests
//
//  Created by Saran Nonkamjan on 23/2/2566 BE.
//

import XCTest

class ModalViewPageObject {
    private let app: XCUIApplication

    init(app: XCUIApplication) {
        self.app = app
    }

    var titleText: XCUIElement {
        app.staticTexts["modalview_text"]
    }

    var usernameTextField: XCUIElement {
        app.textFields["modalview_textfield"]
    }

    var clickButton: XCUIElement {
        app.buttons["modalview_button"]
    }

    var messageText: XCUIElement {
        app.staticTexts["modalview_username"]
    }
}
