//
// VariableLinks.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct VariableLinks: Codable {

    public var _self: String?
    public var org: String?
    public var labels: String?

    public init(_self: String? = nil, org: String? = nil, labels: String? = nil) {
        self._self = _self
        self.org = org
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case _self = "self"
        case org
        case labels
    }

}

