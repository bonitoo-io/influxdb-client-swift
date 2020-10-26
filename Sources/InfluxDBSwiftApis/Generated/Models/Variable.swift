//
// Variable.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Variable: Codable {

    public var links: VariableLinks?
    public var id: String?
    public var orgID: String
    public var name: String
    public var description: String?
    public var selected: [String]?
    public var labels: [Label]?
    public var arguments: VariableProperties
    public var createdAt: Date?
    public var updatedAt: Date?

    public init(links: VariableLinks? = nil, id: String? = nil, orgID: String, name: String, description: String? = nil, selected: [String]? = nil, labels: [Label]? = nil, arguments: VariableProperties, createdAt: Date? = nil, updatedAt: Date? = nil) {
        self.links = links
        self.id = id
        self.orgID = orgID
        self.name = name
        self.description = description
        self.selected = selected
        self.labels = labels
        self.arguments = arguments
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

}

