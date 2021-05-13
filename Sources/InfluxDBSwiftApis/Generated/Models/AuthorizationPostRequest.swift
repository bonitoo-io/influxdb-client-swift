//
// AuthorizationPostRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AuthorizationPostRequest: Codable {

    public enum Status: String, Codable, CaseIterable {
        case active = "active"
        case inactive = "inactive"
    }
    /** If inactive the token is inactive and requests using the token will be rejected. */
    public var status: Status? = .active
    /** A description of the token. */
    public var description: String?
    /** ID of org that authorization is scoped to. */
    public var orgID: String
    /** ID of user that authorization is scoped to. */
    public var userID: String?
    /** List of permissions for an auth.  An auth must have at least one Permission. */
    public var permissions: [Permission]

    public init(status: Status? = .active, description: String? = nil, orgID: String, userID: String? = nil, permissions: [Permission]) {
        self.status = status
        self.description = description
        self.orgID = orgID
        self.userID = userID
        self.permissions = permissions
    }

}