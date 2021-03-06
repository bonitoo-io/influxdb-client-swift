#if !canImport(ObjectiveC)
import XCTest

extension AuthorizationsAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__AuthorizationsAPITests = [
        ("testCreateAuthorization", testCreateAuthorization),
    ]
}

extension BucketsAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__BucketsAPITests = [
        ("testCreateBucket", testCreateBucket),
    ]
}

extension DBRPsAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__DBRPsAPITests = [
        ("testCreateDBRPS", testCreateDBRPS),
    ]
}

extension HealthAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__HealthAPITests = [
        ("testHealth", testHealth),
    ]
}

extension InfluxDB2APITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__InfluxDB2APITests = [
        ("testCreateApis", testCreateApis),
        ("testCreateInstance", testCreateInstance),
        ("testURLSession", testURLSession),
    ]
}

extension LabelsAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__LabelsAPITests = [
        ("testCreateLabel", testCreateLabel),
    ]
}

extension OrganizationsAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__OrganizationsAPITests = [
        ("testCreateOrg", testCreateOrg),
    ]
}

extension ReadyAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ReadyAPITests = [
        ("testReady", testReady),
    ]
}

extension ScraperTargetsAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ScraperTargetsAPITests = [
        ("testCreateScraperTarget", testCreateScraperTarget),
    ]
}

extension SecretsAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SecretsAPITests = [
        ("testCreateSecret", testCreateSecret),
    ]
}

extension SetupAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SetupAPITests = [
        ("testGetSetup", testGetSetup),
    ]
}

extension SourcesAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SourcesAPITests = [
        ("testCreateSource", testCreateSource),
    ]
}

extension TasksAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__TasksAPITests = [
        ("testCreateTask", testCreateTask),
    ]
}

extension UsersAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__UsersAPITests = [
        ("testCreateUser", testCreateUser),
    ]
}

extension VariablesAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__VariablesAPITests = [
        ("testCreateVariable", testCreateVariable),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(AuthorizationsAPITests.__allTests__AuthorizationsAPITests),
        testCase(BucketsAPITests.__allTests__BucketsAPITests),
        testCase(DBRPsAPITests.__allTests__DBRPsAPITests),
        testCase(HealthAPITests.__allTests__HealthAPITests),
        testCase(InfluxDB2APITests.__allTests__InfluxDB2APITests),
        testCase(LabelsAPITests.__allTests__LabelsAPITests),
        testCase(OrganizationsAPITests.__allTests__OrganizationsAPITests),
        testCase(ReadyAPITests.__allTests__ReadyAPITests),
        testCase(ScraperTargetsAPITests.__allTests__ScraperTargetsAPITests),
        testCase(SecretsAPITests.__allTests__SecretsAPITests),
        testCase(SetupAPITests.__allTests__SetupAPITests),
        testCase(SourcesAPITests.__allTests__SourcesAPITests),
        testCase(TasksAPITests.__allTests__TasksAPITests),
        testCase(UsersAPITests.__allTests__UsersAPITests),
        testCase(VariablesAPITests.__allTests__VariablesAPITests),
    ]
}
#endif
