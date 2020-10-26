//
// AuthorizationsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

extension InfluxDB2API {


open class AuthorizationsAPI {
    /**
     Delete a authorization
     
     - parameter authID: (path) The ID of the authorization to delete. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAuthorizationsID(authID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteAuthorizationsIDWithRequestBuilder(authID: authID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a authorization
     - DELETE /authorizations/{authID}
     - parameter authID: (path) The ID of the authorization to delete. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deleteAuthorizationsIDWithRequestBuilder(authID: String, zapTraceSpan: String? = nil) -> RequestBuilder<Void> {
        var path = "/authorizations/{authID}"
        let authIDPreEscape = "\(APIHelper.mapValueToPathItem(authID))"
        let authIDPostEscape = authIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{authID}", with: authIDPostEscape, options: .literal, range: nil)
        let URLString = InfluxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = InfluxDB2API.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     List all authorizations
     
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter userID: (query) Only show authorizations that belong to a user ID. (optional)
     - parameter user: (query) Only show authorizations that belong to a user name. (optional)
     - parameter orgID: (query) Only show authorizations that belong to an organization ID. (optional)
     - parameter org: (query) Only show authorizations that belong to a organization name. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAuthorizations(zapTraceSpan: String? = nil, userID: String? = nil, user: String? = nil, orgID: String? = nil, org: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: Authorizations?,_ error: Error?) -> Void)) {
        getAuthorizationsWithRequestBuilder(zapTraceSpan: zapTraceSpan, userID: userID, user: user, orgID: orgID, org: org).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List all authorizations
     - GET /authorizations
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter userID: (query) Only show authorizations that belong to a user ID. (optional)
     - parameter user: (query) Only show authorizations that belong to a user name. (optional)
     - parameter orgID: (query) Only show authorizations that belong to an organization ID. (optional)
     - parameter org: (query) Only show authorizations that belong to a organization name. (optional)
     - returns: RequestBuilder<Authorizations> 
     */
    open class func getAuthorizationsWithRequestBuilder(zapTraceSpan: String? = nil, userID: String? = nil, user: String? = nil, orgID: String? = nil, org: String? = nil) -> RequestBuilder<Authorizations> {
        let path = "/authorizations"
        let URLString = InfluxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "userID": userID?.encodeToJSON(), 
            "user": user?.encodeToJSON(), 
            "orgID": orgID?.encodeToJSON(), 
            "org": org?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Authorizations>.Type = InfluxDB2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Retrieve an authorization
     
     - parameter authID: (path) The ID of the authorization to get. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAuthorizationsID(authID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: Authorization?,_ error: Error?) -> Void)) {
        getAuthorizationsIDWithRequestBuilder(authID: authID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve an authorization
     - GET /authorizations/{authID}
     - parameter authID: (path) The ID of the authorization to get. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Authorization> 
     */
    open class func getAuthorizationsIDWithRequestBuilder(authID: String, zapTraceSpan: String? = nil) -> RequestBuilder<Authorization> {
        var path = "/authorizations/{authID}"
        let authIDPreEscape = "\(APIHelper.mapValueToPathItem(authID))"
        let authIDPostEscape = authIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{authID}", with: authIDPostEscape, options: .literal, range: nil)
        let URLString = InfluxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Authorization>.Type = InfluxDB2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update an authorization to be active or inactive
     
     - parameter authID: (path) The ID of the authorization to update. 
     - parameter authorizationUpdateRequest: (body) Authorization to update 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func patchAuthorizationsID(authID: String, authorizationUpdateRequest: AuthorizationUpdateRequest, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: Authorization?,_ error: Error?) -> Void)) {
        patchAuthorizationsIDWithRequestBuilder(authID: authID, authorizationUpdateRequest: authorizationUpdateRequest, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update an authorization to be active or inactive
     - PATCH /authorizations/{authID}
     - parameter authID: (path) The ID of the authorization to update. 
     - parameter authorizationUpdateRequest: (body) Authorization to update 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Authorization> 
     */
    open class func patchAuthorizationsIDWithRequestBuilder(authID: String, authorizationUpdateRequest: AuthorizationUpdateRequest, zapTraceSpan: String? = nil) -> RequestBuilder<Authorization> {
        var path = "/authorizations/{authID}"
        let authIDPreEscape = "\(APIHelper.mapValueToPathItem(authID))"
        let authIDPostEscape = authIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{authID}", with: authIDPostEscape, options: .literal, range: nil)
        let URLString = InfluxDB2API.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: authorizationUpdateRequest)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Authorization>.Type = InfluxDB2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Create an authorization
     
     - parameter authorization: (body) Authorization to create 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postAuthorizations(authorization: Authorization, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: Authorization?,_ error: Error?) -> Void)) {
        postAuthorizationsWithRequestBuilder(authorization: authorization, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create an authorization
     - POST /authorizations
     - parameter authorization: (body) Authorization to create 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Authorization> 
     */
    open class func postAuthorizationsWithRequestBuilder(authorization: Authorization, zapTraceSpan: String? = nil) -> RequestBuilder<Authorization> {
        let path = "/authorizations"
        let URLString = InfluxDB2API.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: authorization)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Authorization>.Type = InfluxDB2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
}