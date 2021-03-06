//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class TrainLoading: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** Direction in regards to Journey Planner i.e. inbound or outbound */
    public var direction: String?

    /** The Line Name e.g. "Victoria" */
    public var line: String?

    /** Direction of the Line e.g. NB, SB, WB etc. */
    public var lineDirection: String?

    /** Naptan of the adjacent station */
    public var naptanTo: String?

    /** Direction displayed on the platform e.g. NB, SB, WB etc. */
    public var platformDirection: String?

    /** Time in 24hr format with 15 minute intervals e.g. 0500-0515, 0515-0530 etc. */
    public var timeSlice: String?

    /** Scale between 1-6, 
             1 = Very quiet, 2 = Quiet, 3 = Fairly busy, 4 = Busy, 5 = Very busy, 6 = Exceptionally busy */
    public var value: Int?

    public init(direction: String? = nil, line: String? = nil, lineDirection: String? = nil, naptanTo: String? = nil, platformDirection: String? = nil, timeSlice: String? = nil, value: Int? = nil) {
        self.direction = direction
        self.line = line
        self.lineDirection = lineDirection
        self.naptanTo = naptanTo
        self.platformDirection = platformDirection
        self.timeSlice = timeSlice
        self.value = value
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        direction = jsonDictionary.json(atKeyPath: "direction")
        line = jsonDictionary.json(atKeyPath: "line")
        lineDirection = jsonDictionary.json(atKeyPath: "lineDirection")
        naptanTo = jsonDictionary.json(atKeyPath: "naptanTo")
        platformDirection = jsonDictionary.json(atKeyPath: "platformDirection")
        timeSlice = jsonDictionary.json(atKeyPath: "timeSlice")
        value = jsonDictionary.json(atKeyPath: "value")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let direction = direction {
            dictionary["direction"] = direction
        }
        if let line = line {
            dictionary["line"] = line
        }
        if let lineDirection = lineDirection {
            dictionary["lineDirection"] = lineDirection
        }
        if let naptanTo = naptanTo {
            dictionary["naptanTo"] = naptanTo
        }
        if let platformDirection = platformDirection {
            dictionary["platformDirection"] = platformDirection
        }
        if let timeSlice = timeSlice {
            dictionary["timeSlice"] = timeSlice
        }
        if let value = value {
            dictionary["value"] = value
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
