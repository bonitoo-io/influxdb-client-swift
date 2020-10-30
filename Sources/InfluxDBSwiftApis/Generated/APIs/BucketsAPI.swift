//
// BucketsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

extension InfluxDB2API {


public class BucketsAPI {
    private let influxDB2API: InfluxDB2API

    public init(influxDB2API: InfluxDB2API) {
        self.influxDB2API = influxDB2API
    }

    /**
     Delete a bucket
     
     - parameter bucketID: (path) The ID of the bucket to delete. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func deleteBucketsID(bucketID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteBucketsIDWithRequestBuilder(bucketID: bucketID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a bucket
     - DELETE /buckets/{bucketID}
     - parameter bucketID: (path) The ID of the bucket to delete. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Void> 
     */
    internal func deleteBucketsIDWithRequestBuilder(bucketID: String, zapTraceSpan: String? = nil) -> RequestBuilder<Void> {
        var path = "/buckets/{bucketID}"
        let bucketIDPreEscape = "\(APIHelper.mapValueToPathItem(bucketID))"
        let bucketIDPostEscape = bucketIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{bucketID}", with: bucketIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void> = influxDB2API.requestBuilderFactory.getRequestNonDecodableBuilder(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     Delete a label from a bucket
     
     - parameter bucketID: (path) The bucket ID. 
     - parameter labelID: (path) The ID of the label to delete. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func deleteBucketsIDLabelsID(bucketID: String, labelID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteBucketsIDLabelsIDWithRequestBuilder(bucketID: bucketID, labelID: labelID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a label from a bucket
     - DELETE /buckets/{bucketID}/labels/{labelID}
     - parameter bucketID: (path) The bucket ID. 
     - parameter labelID: (path) The ID of the label to delete. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Void> 
     */
    internal func deleteBucketsIDLabelsIDWithRequestBuilder(bucketID: String, labelID: String, zapTraceSpan: String? = nil) -> RequestBuilder<Void> {
        var path = "/buckets/{bucketID}/labels/{labelID}"
        let bucketIDPreEscape = "\(APIHelper.mapValueToPathItem(bucketID))"
        let bucketIDPostEscape = bucketIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{bucketID}", with: bucketIDPostEscape, options: .literal, range: nil)
        let labelIDPreEscape = "\(APIHelper.mapValueToPathItem(labelID))"
        let labelIDPostEscape = labelIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{labelID}", with: labelIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void> = influxDB2API.requestBuilderFactory.getRequestNonDecodableBuilder(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     Remove a member from a bucket
     
     - parameter userID: (path) The ID of the member to remove. 
     - parameter bucketID: (path) The bucket ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func deleteBucketsIDMembersID(userID: String, bucketID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteBucketsIDMembersIDWithRequestBuilder(userID: userID, bucketID: bucketID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove a member from a bucket
     - DELETE /buckets/{bucketID}/members/{userID}
     - parameter userID: (path) The ID of the member to remove. 
     - parameter bucketID: (path) The bucket ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Void> 
     */
    internal func deleteBucketsIDMembersIDWithRequestBuilder(userID: String, bucketID: String, zapTraceSpan: String? = nil) -> RequestBuilder<Void> {
        var path = "/buckets/{bucketID}/members/{userID}"
        let userIDPreEscape = "\(APIHelper.mapValueToPathItem(userID))"
        let userIDPostEscape = userIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userID}", with: userIDPostEscape, options: .literal, range: nil)
        let bucketIDPreEscape = "\(APIHelper.mapValueToPathItem(bucketID))"
        let bucketIDPostEscape = bucketIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{bucketID}", with: bucketIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void> = influxDB2API.requestBuilderFactory.getRequestNonDecodableBuilder(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     Remove an owner from a bucket
     
     - parameter userID: (path) The ID of the owner to remove. 
     - parameter bucketID: (path) The bucket ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func deleteBucketsIDOwnersID(userID: String, bucketID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteBucketsIDOwnersIDWithRequestBuilder(userID: userID, bucketID: bucketID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Remove an owner from a bucket
     - DELETE /buckets/{bucketID}/owners/{userID}
     - parameter userID: (path) The ID of the owner to remove. 
     - parameter bucketID: (path) The bucket ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Void> 
     */
    internal func deleteBucketsIDOwnersIDWithRequestBuilder(userID: String, bucketID: String, zapTraceSpan: String? = nil) -> RequestBuilder<Void> {
        var path = "/buckets/{bucketID}/owners/{userID}"
        let userIDPreEscape = "\(APIHelper.mapValueToPathItem(userID))"
        let userIDPostEscape = userIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userID}", with: userIDPostEscape, options: .literal, range: nil)
        let bucketIDPreEscape = "\(APIHelper.mapValueToPathItem(bucketID))"
        let bucketIDPostEscape = bucketIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{bucketID}", with: bucketIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void> = influxDB2API.requestBuilderFactory.getRequestNonDecodableBuilder(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     List all buckets
     
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter offset: (query)  (optional)
     - parameter limit: (query)  (optional, default to 20)
     - parameter after: (query) The last resource ID from which to seek from (but not including). This is to be used instead of &#x60;offset&#x60;.  (optional)
     - parameter org: (query) The organization name. (optional)
     - parameter orgID: (query) The organization ID. (optional)
     - parameter name: (query) Only returns buckets with a specific name. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func getBuckets(zapTraceSpan: String? = nil, offset: Int? = nil, limit: Int? = nil, after: String? = nil, org: String? = nil, orgID: String? = nil, name: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: Buckets?,_ error: Error?) -> Void)) {
        getBucketsWithRequestBuilder(zapTraceSpan: zapTraceSpan, offset: offset, limit: limit, after: after, org: org, orgID: orgID, name: name).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List all buckets
     - GET /buckets
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter offset: (query)  (optional)
     - parameter limit: (query)  (optional, default to 20)
     - parameter after: (query) The last resource ID from which to seek from (but not including). This is to be used instead of &#x60;offset&#x60;.  (optional)
     - parameter org: (query) The organization name. (optional)
     - parameter orgID: (query) The organization ID. (optional)
     - parameter name: (query) Only returns buckets with a specific name. (optional)
     - returns: RequestBuilder<Buckets> 
     */
    internal func getBucketsWithRequestBuilder(zapTraceSpan: String? = nil, offset: Int? = nil, limit: Int? = nil, after: String? = nil, org: String? = nil, orgID: String? = nil, name: String? = nil) -> RequestBuilder<Buckets> {
        let path = "/buckets"
        let URLString = influxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "offset": offset?.encodeToJSON(), 
            "limit": limit?.encodeToJSON(), 
            "after": after?.encodeToJSON(), 
            "org": org?.encodeToJSON(), 
            "orgID": orgID?.encodeToJSON(), 
            "name": name?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Buckets> = influxDB2API.requestBuilderFactory.getRequestDecodableBuilder(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     Retrieve a bucket
     
     - parameter bucketID: (path) The bucket ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func getBucketsID(bucketID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: Bucket?,_ error: Error?) -> Void)) {
        getBucketsIDWithRequestBuilder(bucketID: bucketID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve a bucket
     - GET /buckets/{bucketID}
     - parameter bucketID: (path) The bucket ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Bucket> 
     */
    internal func getBucketsIDWithRequestBuilder(bucketID: String, zapTraceSpan: String? = nil) -> RequestBuilder<Bucket> {
        var path = "/buckets/{bucketID}"
        let bucketIDPreEscape = "\(APIHelper.mapValueToPathItem(bucketID))"
        let bucketIDPostEscape = bucketIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{bucketID}", with: bucketIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bucket> = influxDB2API.requestBuilderFactory.getRequestDecodableBuilder(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     List all labels for a bucket
     
     - parameter bucketID: (path) The bucket ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func getBucketsIDLabels(bucketID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: LabelsResponse?,_ error: Error?) -> Void)) {
        getBucketsIDLabelsWithRequestBuilder(bucketID: bucketID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List all labels for a bucket
     - GET /buckets/{bucketID}/labels
     - parameter bucketID: (path) The bucket ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<LabelsResponse> 
     */
    internal func getBucketsIDLabelsWithRequestBuilder(bucketID: String, zapTraceSpan: String? = nil) -> RequestBuilder<LabelsResponse> {
        var path = "/buckets/{bucketID}/labels"
        let bucketIDPreEscape = "\(APIHelper.mapValueToPathItem(bucketID))"
        let bucketIDPostEscape = bucketIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{bucketID}", with: bucketIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LabelsResponse> = influxDB2API.requestBuilderFactory.getRequestDecodableBuilder(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     List all users with member privileges for a bucket
     
     - parameter bucketID: (path) The bucket ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func getBucketsIDMembers(bucketID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: ResourceMembers?,_ error: Error?) -> Void)) {
        getBucketsIDMembersWithRequestBuilder(bucketID: bucketID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List all users with member privileges for a bucket
     - GET /buckets/{bucketID}/members
     - parameter bucketID: (path) The bucket ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<ResourceMembers> 
     */
    internal func getBucketsIDMembersWithRequestBuilder(bucketID: String, zapTraceSpan: String? = nil) -> RequestBuilder<ResourceMembers> {
        var path = "/buckets/{bucketID}/members"
        let bucketIDPreEscape = "\(APIHelper.mapValueToPathItem(bucketID))"
        let bucketIDPostEscape = bucketIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{bucketID}", with: bucketIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ResourceMembers> = influxDB2API.requestBuilderFactory.getRequestDecodableBuilder(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     List all owners of a bucket
     
     - parameter bucketID: (path) The bucket ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func getBucketsIDOwners(bucketID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: ResourceOwners?,_ error: Error?) -> Void)) {
        getBucketsIDOwnersWithRequestBuilder(bucketID: bucketID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List all owners of a bucket
     - GET /buckets/{bucketID}/owners
     - parameter bucketID: (path) The bucket ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<ResourceOwners> 
     */
    internal func getBucketsIDOwnersWithRequestBuilder(bucketID: String, zapTraceSpan: String? = nil) -> RequestBuilder<ResourceOwners> {
        var path = "/buckets/{bucketID}/owners"
        let bucketIDPreEscape = "\(APIHelper.mapValueToPathItem(bucketID))"
        let bucketIDPostEscape = bucketIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{bucketID}", with: bucketIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ResourceOwners> = influxDB2API.requestBuilderFactory.getRequestDecodableBuilder(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     Get buckets in a source
     
     - parameter sourceID: (path) The source ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter org: (query) The organization name. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func getSourcesIDBuckets(sourceID: String, zapTraceSpan: String? = nil, org: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: Buckets?,_ error: Error?) -> Void)) {
        getSourcesIDBucketsWithRequestBuilder(sourceID: sourceID, zapTraceSpan: zapTraceSpan, org: org).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get buckets in a source
     - GET /sources/{sourceID}/buckets
     - parameter sourceID: (path) The source ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter org: (query) The organization name. (optional)
     - returns: RequestBuilder<Buckets> 
     */
    internal func getSourcesIDBucketsWithRequestBuilder(sourceID: String, zapTraceSpan: String? = nil, org: String? = nil) -> RequestBuilder<Buckets> {
        var path = "/sources/{sourceID}/buckets"
        let sourceIDPreEscape = "\(APIHelper.mapValueToPathItem(sourceID))"
        let sourceIDPostEscape = sourceIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{sourceID}", with: sourceIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "org": org?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Buckets> = influxDB2API.requestBuilderFactory.getRequestDecodableBuilder(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     Update a bucket
     
     - parameter bucketID: (path) The bucket ID. 
     - parameter bucket: (body) Bucket update to apply 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func patchBucketsID(bucketID: String, bucket: Bucket, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: Bucket?,_ error: Error?) -> Void)) {
        patchBucketsIDWithRequestBuilder(bucketID: bucketID, bucket: bucket, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update a bucket
     - PATCH /buckets/{bucketID}
     - parameter bucketID: (path) The bucket ID. 
     - parameter bucket: (body) Bucket update to apply 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Bucket> 
     */
    internal func patchBucketsIDWithRequestBuilder(bucketID: String, bucket: Bucket, zapTraceSpan: String? = nil) -> RequestBuilder<Bucket> {
        var path = "/buckets/{bucketID}"
        let bucketIDPreEscape = "\(APIHelper.mapValueToPathItem(bucketID))"
        let bucketIDPostEscape = bucketIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{bucketID}", with: bucketIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: bucket)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bucket> = influxDB2API.requestBuilderFactory.getRequestDecodableBuilder(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     Create a bucket
     
     - parameter postBucketRequest: (body) Bucket to create 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func postBuckets(postBucketRequest: PostBucketRequest, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: Bucket?,_ error: Error?) -> Void)) {
        postBucketsWithRequestBuilder(postBucketRequest: postBucketRequest, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a bucket
     - POST /buckets
     - parameter postBucketRequest: (body) Bucket to create 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Bucket> 
     */
    internal func postBucketsWithRequestBuilder(postBucketRequest: PostBucketRequest, zapTraceSpan: String? = nil) -> RequestBuilder<Bucket> {
        let path = "/buckets"
        let URLString = influxDB2API.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postBucketRequest)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bucket> = influxDB2API.requestBuilderFactory.getRequestDecodableBuilder(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     Add a label to a bucket
     
     - parameter bucketID: (path) The bucket ID. 
     - parameter labelMapping: (body) Label to add 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func postBucketsIDLabels(bucketID: String, labelMapping: LabelMapping, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: LabelResponse?,_ error: Error?) -> Void)) {
        postBucketsIDLabelsWithRequestBuilder(bucketID: bucketID, labelMapping: labelMapping, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add a label to a bucket
     - POST /buckets/{bucketID}/labels
     - parameter bucketID: (path) The bucket ID. 
     - parameter labelMapping: (body) Label to add 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<LabelResponse> 
     */
    internal func postBucketsIDLabelsWithRequestBuilder(bucketID: String, labelMapping: LabelMapping, zapTraceSpan: String? = nil) -> RequestBuilder<LabelResponse> {
        var path = "/buckets/{bucketID}/labels"
        let bucketIDPreEscape = "\(APIHelper.mapValueToPathItem(bucketID))"
        let bucketIDPostEscape = bucketIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{bucketID}", with: bucketIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: labelMapping)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LabelResponse> = influxDB2API.requestBuilderFactory.getRequestDecodableBuilder(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     Add a member to a bucket
     
     - parameter bucketID: (path) The bucket ID. 
     - parameter addResourceMemberRequestBody: (body) User to add as member 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func postBucketsIDMembers(bucketID: String, addResourceMemberRequestBody: AddResourceMemberRequestBody, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: ResourceMember?,_ error: Error?) -> Void)) {
        postBucketsIDMembersWithRequestBuilder(bucketID: bucketID, addResourceMemberRequestBody: addResourceMemberRequestBody, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add a member to a bucket
     - POST /buckets/{bucketID}/members
     - parameter bucketID: (path) The bucket ID. 
     - parameter addResourceMemberRequestBody: (body) User to add as member 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<ResourceMember> 
     */
    internal func postBucketsIDMembersWithRequestBuilder(bucketID: String, addResourceMemberRequestBody: AddResourceMemberRequestBody, zapTraceSpan: String? = nil) -> RequestBuilder<ResourceMember> {
        var path = "/buckets/{bucketID}/members"
        let bucketIDPreEscape = "\(APIHelper.mapValueToPathItem(bucketID))"
        let bucketIDPostEscape = bucketIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{bucketID}", with: bucketIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addResourceMemberRequestBody)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ResourceMember> = influxDB2API.requestBuilderFactory.getRequestDecodableBuilder(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

    /**
     Add an owner to a bucket
     
     - parameter bucketID: (path) The bucket ID. 
     - parameter addResourceMemberRequestBody: (body) User to add as owner 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    public func postBucketsIDOwners(bucketID: String, addResourceMemberRequestBody: AddResourceMemberRequestBody, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue? = nil, completion: @escaping ((_ data: ResourceOwner?,_ error: Error?) -> Void)) {
        postBucketsIDOwnersWithRequestBuilder(bucketID: bucketID, addResourceMemberRequestBody: addResourceMemberRequestBody, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue ?? self.influxDB2API.apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add an owner to a bucket
     - POST /buckets/{bucketID}/owners
     - parameter bucketID: (path) The bucket ID. 
     - parameter addResourceMemberRequestBody: (body) User to add as owner 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<ResourceOwner> 
     */
    internal func postBucketsIDOwnersWithRequestBuilder(bucketID: String, addResourceMemberRequestBody: AddResourceMemberRequestBody, zapTraceSpan: String? = nil) -> RequestBuilder<ResourceOwner> {
        var path = "/buckets/{bucketID}/owners"
        let bucketIDPreEscape = "\(APIHelper.mapValueToPathItem(bucketID))"
        let bucketIDPostEscape = bucketIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{bucketID}", with: bucketIDPostEscape, options: .literal, range: nil)
        let URLString = influxDB2API.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: addResourceMemberRequestBody)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ResourceOwner> = influxDB2API.requestBuilderFactory.getRequestDecodableBuilder(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters, influxDB2API: influxDB2API)

        return requestBuilder
    }

}
}
