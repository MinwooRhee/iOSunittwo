
import Foundation

struct Emoji: Codable {
    var symbol: String
    var name: String
    var detailDescription: String
    var usage: String
    
    static let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let saveURL = documentDirectory.appendingPathExtension("emojis").appendingPathExtension("plist")
    
    static func saveEmojis(emojis: [Emoji]) {
        let propertyListEncoder = PropertyListEncoder()
        let encodedEmojis = try? propertyListEncoder.encode(emojis)
        try? encodedEmojis?.write(to: saveURL, options: .noFileProtection)
        
    }
    static func loadEmojis() -> [Emoji]? {
        let propertyListDecoder = PropertyListDecoder()
        if let retrievedEmoji = try? Data(contentsOf: saveURL){
            if let decodedEmoji = try? propertyListDecoder.decode(Array<Emoji>?.self, from: retrievedEmoji) {
                return decodedEmoji
            }
        }
        return nil
    }
    
    static func loadSampleEmojis() -> [Emoji] {
        let emojis = [Emoji(symbol: "😀", name: "Grinning Face", detailDescription: "A typical smiley face.", usage: "happiness"),
                      Emoji(symbol: "😕", name: "Confused Face", detailDescription: "A confused, puzzled face.", usage: "unsure what to think; displeasure"),
                      Emoji(symbol: "😍", name: "Heart Eyes", detailDescription: "A smiley face with hearts for eyes.", usage: "love of something; attractive"),
                      Emoji(symbol: "👮", name: "Police Officer", detailDescription: "A police officer wearing a blue cap with a gold badge. He is smiling, and eager to help.", usage: "person of authority"),
                      Emoji(symbol: "🐢", name: "Turtle", detailDescription: "A cute turtle.", usage: "Something slow"),
                      Emoji(symbol: "🐘", name: "Elephant", detailDescription: "A gray elephant.", usage: "good memory"),
                      Emoji(symbol: "🍝", name: "Spaghetti", detailDescription: "A plate of spaghetti.", usage: "spaghetti"),
                      Emoji(symbol: "🎲", name: "Die", detailDescription: "A single die.", usage: "taking a risk, chance; game"),
                      Emoji(symbol: "⛺️", name: "Tent", detailDescription: "A small tent.", usage: "camping"),
                      Emoji(symbol: "📚", name: "Stack of Books", detailDescription: "Three colored books stacked on each other.", usage: "homework, studying"),
                      Emoji(symbol: "💔", name: "Broken Heart", detailDescription: "A red, broken heart.", usage: "extreme sadness"),
                      Emoji(symbol: "💤", name: "Snore", detailDescription: "Three blue \'z\'s.", usage: "tired, sleepiness"),
                      Emoji(symbol: "🏁", name: "Checkered Flag", detailDescription: "A black and white checkered flag.", usage: "completion")]
        return emojis
    }
}
