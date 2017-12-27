//
// Created by mopopo on 2017/12/27.
//

import Foundation

public struct Emoji {
    /// The short code of the emoji.
    public let shortCode: String
    /// URL to the emoji static image.
    public let staticURL: URL
    /// URL to the emoji image.
    public let url: URL
}

extension Emoji: JSONDictionaryInitializable {
    init?(from dictionary: JSONDictionary) {
        guard
                let shortCode = dictionary["shortcode"] as? String,
                let staticURLString = dictionary["static_url"] as? String,
                let staticURL = URL(string: staticURLString),
                let urlString = dictionary["url"] as? String,
                let url = URL(string: urlString)
                else {
            return nil
        }

        self.shortCode = shortCode
        self.staticURL = staticURL
        self.url = url
    }
}
