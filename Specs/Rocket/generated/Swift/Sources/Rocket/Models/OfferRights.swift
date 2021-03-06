//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

/** The base type for both Offer and Entitlement. */
public class OfferRights: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** The base type for both Offer and Entitlement. */
    public enum DeliveryType: String {
        case stream = "Stream"
        case download = "Download"
        case streamOrDownload = "StreamOrDownload"
        case progressiveDownload = "ProgressiveDownload"
        case none = "None"

        public static let cases: [DeliveryType] = [
          .stream,
          .download,
          .streamOrDownload,
          .progressiveDownload,
          .none,
        ]
    }

    /** The base type for both Offer and Entitlement. */
    public enum Resolution: String {
        case sd = "SD"
        case hd720 = "HD-720"
        case hd1080 = "HD-1080"
        case unknown = "Unknown"

        public static let cases: [Resolution] = [
          .sd,
          .hd720,
          .hd1080,
          .unknown,
        ]
    }

    /** The base type for both Offer and Entitlement. */
    public enum Ownership: String {
        case subscription = "Subscription"
        case free = "Free"
        case rent = "Rent"
        case own = "Own"
        case none = "None"

        public static let cases: [Ownership] = [
          .subscription,
          .free,
          .rent,
          .own,
          .none,
        ]
    }

    public var deliveryType: DeliveryType

    public var scopes: [String]

    public var resolution: Resolution

    public var ownership: Ownership

    /** Any specific playback exclusion rules. */
    public var exclusionRules: [ExclusionRule]?

    /** The maximum number of allowed downloads. */
    public var maxDownloads: Int?

    /** The maximum number of allowed plays. */
    public var maxPlays: Int?

    /** The length of time in minutes which the rental will last once played for the first time. */
    public var playPeriod: Int?

    /** The length of time in minutes which the rental will last once purchased. */
    public var rentalPeriod: Int?

    public init(deliveryType: DeliveryType, scopes: [String], resolution: Resolution, ownership: Ownership, exclusionRules: [ExclusionRule]? = nil, maxDownloads: Int? = nil, maxPlays: Int? = nil, playPeriod: Int? = nil, rentalPeriod: Int? = nil) {
        self.deliveryType = deliveryType
        self.scopes = scopes
        self.resolution = resolution
        self.ownership = ownership
        self.exclusionRules = exclusionRules
        self.maxDownloads = maxDownloads
        self.maxPlays = maxPlays
        self.playPeriod = playPeriod
        self.rentalPeriod = rentalPeriod
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        deliveryType = try jsonDictionary.json(atKeyPath: "deliveryType")
        scopes = try jsonDictionary.json(atKeyPath: "scopes")
        resolution = try jsonDictionary.json(atKeyPath: "resolution")
        ownership = try jsonDictionary.json(atKeyPath: "ownership")
        exclusionRules = jsonDictionary.json(atKeyPath: "exclusionRules")
        maxDownloads = jsonDictionary.json(atKeyPath: "maxDownloads")
        maxPlays = jsonDictionary.json(atKeyPath: "maxPlays")
        playPeriod = jsonDictionary.json(atKeyPath: "playPeriod")
        rentalPeriod = jsonDictionary.json(atKeyPath: "rentalPeriod")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["deliveryType"] = deliveryType.encode()
        dictionary["scopes"] = scopes
        dictionary["resolution"] = resolution.encode()
        dictionary["ownership"] = ownership.encode()
        if let exclusionRules = exclusionRules?.encode() {
            dictionary["exclusionRules"] = exclusionRules
        }
        if let maxDownloads = maxDownloads {
            dictionary["maxDownloads"] = maxDownloads
        }
        if let maxPlays = maxPlays {
            dictionary["maxPlays"] = maxPlays
        }
        if let playPeriod = playPeriod {
            dictionary["playPeriod"] = playPeriod
        }
        if let rentalPeriod = rentalPeriod {
            dictionary["rentalPeriod"] = rentalPeriod
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(Swift.type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
