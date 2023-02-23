//
//  ExamplePatternUITests.swift
//  ExampleProjectForUITestUITests
//
//  Created by Saran Nonkamjan on 23/2/2566 BE.
//

import XCTest

final class ExamplePatternUITests: XCTestCase {
    let app: XCUIApplication = .init()
    lazy var contentScreenAction: ContentViewScreenAction = .init(pageObject: .init(app: app))
    lazy var modalScreenAction: ModalViewScreenAction = .init(pageObject: .init(app: app))
    lazy var pushScreenAction: PushViewScreenAction = .init(pageObject: .init(app: app))

    override func setUpWithError() throws {
        continueAfterFailure = true

        app.launch()
    }

    func test_MainView_ClickPushView_Then_ClickButtonInPushView_ShowMessage_isClick() {
        contentScreenAction
            .clickPushView()
        pushScreenAction
            .checkTitle(text: "Push View Presented")
            .tappedClick()
            .checkMessage(text: "is Click")
    }

    func test_MainView_ClickModalView_Then_InputUsername_ClickButton_ShowMessageSameUsername() {
        contentScreenAction
            .clickModalView()
        modalScreenAction
            .checkTitle(text: "Modal View Presented")
            .inputUsername(text: "user")
            .tappedClick()
            .checkMessage(text: "user")
    }
}

