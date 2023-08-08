// Generated using Sourcery 2.0.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import SwiftUI
import SnapshotTesting
import XCTest
@testable import SnapshotArticle

private func assertPreviewSnapshot<T: PreviewProvider>(_ target: T.Type,
                                                       file: StaticString = #file,
                                                       testName: String = #function,
                                                       line: UInt = #line,
                                                       isDarkMode: Bool = false) {
    for preview in T._allPreviews {
        let content = preview.content
        let viewController = content.toViewController()
        if isDarkMode {
            viewController.overrideUserInterfaceStyle = .dark
        }
        assertSnapshot(matching: viewController,
                       as: .image(on: .iPhone13),
                       file: file,
                       testName: testName,
                       line: line)
    }
}

class PreviewSnapshotTests: XCTestCase {
    func testContentView_Previews() {
        assertPreviewSnapshot(ContentView_Previews.self)
    }

    func testContentView_Previews_dark() {
        assertPreviewSnapshot(ContentView_Previews.self, isDarkMode: true)
    }

    func testSecondView_Previews() {
        assertPreviewSnapshot(SecondView_Previews.self)
    }

    func testSecondView_Previews_dark() {
        assertPreviewSnapshot(SecondView_Previews.self, isDarkMode: true)
    }

}
