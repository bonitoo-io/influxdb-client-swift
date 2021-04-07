//
// Resource.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Resource: Codable {

    public enum ModelType: String, Codable, CaseIterable {
        case authorizations = "authorizations"
        case buckets = "buckets"
        case dashboards = "dashboards"
        case orgs = "orgs"
        case sources = "sources"
        case tasks = "tasks"
        case telegrafs = "telegrafs"
        case users = "users"
        case variables = "variables"
        case scrapers = "scrapers"
        case secrets = "secrets"
        case labels = "labels"
        case views = "views"
        case documents = "documents"
        case notificationrules = "notificationRules"
        case notificationendpoints = "notificationEndpoints"
        case checks = "checks"
        case dbrp = "dbrp"
    }
    public var type: ModelType
    /** If ID is set that is a permission for a specific resource. if it is not set it is a permission for all resources of that resource type. */
    public var id: String?
    /** Optional name of the resource if the resource has a name field. */
    public var name: String?
    /** If orgID is set that is a permission for all resources owned my that org. if it is not set it is a permission for all resources of that resource type. */
    public var orgID: String?
    /** Optional name of the organization of the organization with orgID. */
    public var org: String?

    public init(type: ModelType, id: String? = nil, name: String? = nil, orgID: String? = nil, org: String? = nil) {
        self.type = type
        self.id = id
        self.name = name
        self.orgID = orgID
        self.org = org
    }

}
