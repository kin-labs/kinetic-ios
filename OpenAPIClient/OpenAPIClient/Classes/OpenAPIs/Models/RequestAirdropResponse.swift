//
// RequestAirdropResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RequestAirdropResponse: Codable, JSONEncodable, Hashable {

    public var signature: String

    public init(signature: String) {
        self.signature = signature
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case signature
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(signature, forKey: .signature)
    }
}

