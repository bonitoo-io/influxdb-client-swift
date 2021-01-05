//
// Routes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Routes: Codable {

    public var authorizations: String?
    public var buckets: String?
    public var dashboards: String?
    public var external: RoutesExternal?
    public var variables: String?
    public var me: String?
    public var flags: String?
    public var orgs: String?
    public var query: RoutesQuery?
    public var setup: String?
    public var signin: String?
    public var signout: String?
    public var sources: String?
    public var system: RoutesSystem?
    public var tasks: String?
    public var telegrafs: String?
    public var users: String?
    public var write: String?

    public init(authorizations: String? = nil, buckets: String? = nil, dashboards: String? = nil, external: RoutesExternal? = nil, variables: String? = nil, me: String? = nil, flags: String? = nil, orgs: String? = nil, query: RoutesQuery? = nil, setup: String? = nil, signin: String? = nil, signout: String? = nil, sources: String? = nil, system: RoutesSystem? = nil, tasks: String? = nil, telegrafs: String? = nil, users: String? = nil, write: String? = nil) {
        self.authorizations = authorizations
        self.buckets = buckets
        self.dashboards = dashboards
        self.external = external
        self.variables = variables
        self.me = me
        self.flags = flags
        self.orgs = orgs
        self.query = query
        self.setup = setup
        self.signin = signin
        self.signout = signout
        self.sources = sources
        self.system = system
        self.tasks = tasks
        self.telegrafs = telegrafs
        self.users = users
        self.write = write
    }

}

