//
// RunManually.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct RunManually: Codable {

    /** Time used for run&#39;s \&quot;now\&quot; option, RFC3339.  Default is the server&#39;s now time. */
    public var scheduledFor: Date?

    public init(scheduledFor: Date? = nil) {
        self.scheduledFor = scheduledFor
    }

}

