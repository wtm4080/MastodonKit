//
// Created by mopopo on 2017/12/27.
//

import XCTest
@testable import MastodonKit

class EmojiTests: XCTestCase {
    func testEmojiFromJSON() {
        let fixture = try? Fixture.load(fileName: "Fixtures/Emoji.json")
        let dictionary = fixture as! JSONDictionary
        let emoji = Emoji(from: dictionary)

        XCTAssertEqual(emoji?.shortCode, "apache")
        XCTAssertEqual(emoji?.staticURL, URL(string: "https://media.knzk.me/custom_emojis/images/000/000/570/static/apache.png"))
        XCTAssertEqual(emoji?.url, URL(string: "https://media.knzk.me/custom_emojis/images/000/000/570/original/apache.png"))
    }
}
