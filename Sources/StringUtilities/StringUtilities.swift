// The Swift Programming Language
// https://docs.swift.org/swift-book

public struct StringUtilities {
    public static func isPalindrome(_ text: String) -> Bool {
        let cleaned = text.lowercased().filter { $0.isLetter }
        return cleaned == String(cleaned.reversed())
    }
    
    public static func wordCount(_ text: String) -> Int {
        let words = text.split { $0.isWhitespace || $0.isNewline }
        return words.count
    }
    
    public static func reversedWords(_ text: String) -> String {
        let words = text.split(separator: " ").reversed()
        return words.joined(separator: " ")
    }
    
    public static func removeWhitespace(_ text: String) -> String {
        return text.filter { !$0.isWhitespace && !$0.isNewline }
    }
}
