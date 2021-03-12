import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RichEditorViewTests.allTests),
    ]
}
#endif
