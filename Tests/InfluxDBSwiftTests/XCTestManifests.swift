#if !canImport(ObjectiveC)
import XCTest

extension InfluxDBClientTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__InfluxDBClientTests = [
        ("testBaseURL", testBaseURL),
        ("testCreateInstance", testCreateInstance),
        ("testSessionHeaders", testSessionHeaders),
        ("testSessionHeadersV1", testSessionHeadersV1),
        ("testTimeoutConfigured", testTimeoutConfigured),
        ("testTimeoutDefault", testTimeoutDefault),
    ]
}

extension InfluxDBErrorTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__InfluxDBErrorTests = [
        ("testDescription", testDescription),
    ]
}

extension PointTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__PointTests = [
        ("testDateTimeFormatting", testDateTimeFormatting),
        ("testDescription", testDescription),
        ("testEqualSignEscaping", testEqualSignEscaping),
        ("testFieldEscape", testFieldEscape),
        ("testFieldNullValue", testFieldNullValue),
        ("testFieldTypes", testFieldTypes),
        ("testFromTuple", testFromTuple),
        ("testInfinityValues", testInfinityValues),
        ("testMeasurementEscape", testMeasurementEscape),
        ("testOnlyInfinityValues", testOnlyInfinityValues),
        ("testOverrideTagField", testOverrideTagField),
        ("testPointProtocol", testPointProtocol),
        ("testPointsFromDifferentTimezones", testPointsFromDifferentTimezones),
        ("testTagEmptyKey", testTagEmptyKey),
        ("testTagEmptyValue", testTagEmptyValue),
        ("testTagEscapingKeyAndValue", testTagEscapingKeyAndValue),
        ("testTime", testTime),
        ("testTimePrecisionDefault", testTimePrecisionDefault),
        ("testTimestamp", testTimestamp),
    ]
}

extension WriteAPITests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__WriteAPITests = [
        ("testGetWriteAPI", testGetWriteAPI),
        ("testWriteArrayOfArray", testWriteArrayOfArray),
        ("testWritePoint", testWritePoint),
        ("testWritePointsDifferentPrecision", testWritePointsDifferentPrecision),
        ("testWriteRecord", testWriteRecord),
        ("testWriteRecordCombine", testWriteRecordCombine),
        ("testWriteRecordGzip", testWriteRecordGzip),
        ("testWriteRecordResult", testWriteRecordResult),
        ("testWriteRecords", testWriteRecords),
        ("testWriteRecordTypes", testWriteRecordTypes),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(InfluxDBClientTests.__allTests__InfluxDBClientTests),
        testCase(InfluxDBErrorTests.__allTests__InfluxDBErrorTests),
        testCase(PointTests.__allTests__PointTests),
        testCase(WriteAPITests.__allTests__WriteAPITests),
    ]
}
#endif
