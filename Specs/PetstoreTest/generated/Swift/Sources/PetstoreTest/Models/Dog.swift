//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Dog: Animal {

    public var breed: String?

    public init(className: String, color: String? = nil, breed: String? = nil) {
        self.breed = breed
        super.init(className: className, color: color)
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        breed = jsonDictionary.json(atKeyPath: "breed")
        try super.init(jsonDictionary: jsonDictionary)
    }

    public override func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let breed = breed {
            dictionary["breed"] = breed
        }
        let superDictionary = super.encode()
        for (key, value) in superDictionary {
            dictionary[key] = value
        }
        return dictionary
    }
}
