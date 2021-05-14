import XCTest
@testable import RichEditorView

final class RichEditorViewTests: XCTestCase {
    func testGetText() {
        RichEditorView().getText() {
            r in
            XCTAssertEqual(r, "Hello, World!")
        }
    }

    static var allTests = [
        ("testGetText", testGetText),
    ]
}
