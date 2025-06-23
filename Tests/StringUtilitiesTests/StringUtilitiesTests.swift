import XCTest
@testable import StringUtilities

final class StringUtilitiesTests: XCTestCase {
    
    func testIsPalindrome() {
        XCTAssertTrue(StringUtilities.isPalindrome("Racecar"))
        XCTAssertTrue(StringUtilities.isPalindrome("A man a plan a canal Panama"))
        XCTAssertFalse(StringUtilities.isPalindrome("Hello World"))
    }
    
    func testWordCount() {
        XCTAssertEqual(StringUtilities.wordCount("Swift is great"), 3)
        XCTAssertEqual(StringUtilities.wordCount("  Hello   World  "), 2)
    }
    
    func testReversedWords() {
        XCTAssertEqual(StringUtilities.reversedWords("one two three"), "three two one")
    }
    
    func testRemoveWhitespace() {
        XCTAssertEqual(StringUtilities.removeWhitespace(" a b c "), "abc")
    }
}
