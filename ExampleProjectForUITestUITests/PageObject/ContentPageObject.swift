//
//  ContentPageObject.swift
//  ExampleProjectForUITestUITests
//
//  Created by Saran Nonkamjan on 23/2/2566 BE.
//

import XCTest

class ContentPageObject {
    private let app: XCUIApplication

    init(app: XCUIApplication) {
        self.app = app
    }

    var navigationTitle: XCUIElement {
        app.navigationBars.staticTexts["ExampleProject"]
    }

    var pushButton: XCUIElement {
        app.buttons["contentview_push"]
    }

    var modalButton: XCUIElement {
        app.buttons["contentview_modal"]
    }
}
