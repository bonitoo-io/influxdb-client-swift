//
// Organization.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Organization: Codable {

    public enum Status: String, Codable, CaseIterable {
        case active = "active"
        case inactive = "inactive"
    }
    public var links: OrganizationLinks?
    public var id: String?
    public var name: String
    public var description: String?
    public var createdAt: Date?
    public var updatedAt: Date?
    /** If inactive the organization is inactive. */
    public var status: Status? = .active

    public init(links: OrganizationLinks? = nil, id: String? = nil, name: String, description: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, status: Status? = .active) {
        self.links = links
        self.id = id
        self.name = name
        self.description = description
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.status = status
    }

}
