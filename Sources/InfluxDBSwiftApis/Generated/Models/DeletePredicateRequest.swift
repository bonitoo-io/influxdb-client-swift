//
// DeletePredicateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The delete predicate request. */
public struct DeletePredicateRequest: Codable {

    /** RFC3339Nano */
    public var start: Date
    /** RFC3339Nano */
    public var stop: Date
    /** InfluxQL-like delete statement */
    public var predicate: String?

    public init(start: Date, stop: Date, predicate: String? = nil) {
        self.start = start
        self.stop = stop
        self.predicate = predicate
    }

}

