//
// Run.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Run: Codable {

    public enum Status: String, Codable, CaseIterable {
        case scheduled = "scheduled"
        case started = "started"
        case failed = "failed"
        case success = "success"
        case canceled = "canceled"
    }
    public var id: String?
    public var taskID: String?
    public var status: Status?
    /** Time used for run&#39;s \&quot;now\&quot; option, RFC3339. */
    public var scheduledFor: Date?
    /** An array of logs associated with the run. */
    public var log: [LogEvent]?
    /** Time run started executing, RFC3339Nano. */
    public var startedAt: Date?
    /** Time run finished executing, RFC3339Nano. */
    public var finishedAt: Date?
    /** Time run was manually requested, RFC3339Nano. */
    public var requestedAt: Date?
    public var links: RunLinks?

    public init(id: String? = nil, taskID: String? = nil, status: Status? = nil, scheduledFor: Date? = nil, log: [LogEvent]? = nil, startedAt: Date? = nil, finishedAt: Date? = nil, requestedAt: Date? = nil, links: RunLinks? = nil) {
        self.id = id
        self.taskID = taskID
        self.status = status
        self.scheduledFor = scheduledFor
        self.log = log
        self.startedAt = startedAt
        self.finishedAt = finishedAt
        self.requestedAt = requestedAt
        self.links = links
    }

}
