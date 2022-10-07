//
// Commitment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum Commitment: String, Codable, CaseIterable {
    case confirmed = "Confirmed"
    case finalized = "Finalized"
    case processed = "Processed"
}
