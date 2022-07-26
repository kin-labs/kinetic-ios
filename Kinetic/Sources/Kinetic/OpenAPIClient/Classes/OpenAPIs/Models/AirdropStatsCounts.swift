//
// AirdropStatsCounts.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AirdropStatsCounts: Codable, JSONEncodable, Hashable {

    public var averageValue: Int
    public var total: Int
    public var totalValue: Int

    public init(averageValue: Int, total: Int, totalValue: Int) {
        self.averageValue = averageValue
        self.total = total
        self.totalValue = totalValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case averageValue
        case total
        case totalValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(averageValue, forKey: .averageValue)
        try container.encode(total, forKey: .total)
        try container.encode(totalValue, forKey: .totalValue)
    }
}

