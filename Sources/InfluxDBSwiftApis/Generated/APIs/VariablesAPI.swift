//
// VariablesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

extension InfluxDB2API {


open class VariablesAPI {
    /**
     Delete a variable
     
     - parameter variableID: (path) The variable ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteVariablesID(variableID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteVariablesIDWithRequestBuilder(variableID: variableID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a variable
     - DELETE /variables/{variableID}
     - parameter variableID: (path) The variable ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deleteVariablesIDWithRequestBuilder(variableID: String, zapTraceSpan: String? = nil) -> RequestBuilder<Void> {
        var path = "/variables/{variableID}"
        let variableIDPreEscape = "\(APIHelper.mapValueToPathItem(variableID))"
        let variableIDPostEscape = variableIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{variableID}", with: variableIDPostEscape, options: .literal, range: nil)
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
     Delete a label from a variable
     
     - parameter variableID: (path) The variable ID. 
     - parameter labelID: (path) The label ID to delete. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteVariablesIDLabelsID(variableID: String, labelID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteVariablesIDLabelsIDWithRequestBuilder(variableID: variableID, labelID: labelID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a label from a variable
     - DELETE /variables/{variableID}/labels/{labelID}
     - parameter variableID: (path) The variable ID. 
     - parameter labelID: (path) The label ID to delete. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deleteVariablesIDLabelsIDWithRequestBuilder(variableID: String, labelID: String, zapTraceSpan: String? = nil) -> RequestBuilder<Void> {
        var path = "/variables/{variableID}/labels/{labelID}"
        let variableIDPreEscape = "\(APIHelper.mapValueToPathItem(variableID))"
        let variableIDPostEscape = variableIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{variableID}", with: variableIDPostEscape, options: .literal, range: nil)
        let labelIDPreEscape = "\(APIHelper.mapValueToPathItem(labelID))"
        let labelIDPostEscape = labelIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{labelID}", with: labelIDPostEscape, options: .literal, range: nil)
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
     Get all variables
     
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter org: (query) The organization name. (optional)
     - parameter orgID: (query) The organization ID. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVariables(zapTraceSpan: String? = nil, org: String? = nil, orgID: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: Variables?,_ error: Error?) -> Void)) {
        getVariablesWithRequestBuilder(zapTraceSpan: zapTraceSpan, org: org, orgID: orgID).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get all variables
     - GET /variables
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter org: (query) The organization name. (optional)
     - parameter orgID: (query) The organization ID. (optional)
     - returns: RequestBuilder<Variables> 
     */
    open class func getVariablesWithRequestBuilder(zapTraceSpan: String? = nil, org: String? = nil, orgID: String? = nil) -> RequestBuilder<Variables> {
        let path = "/variables"
        let URLString = InfluxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "org": org?.encodeToJSON(), 
            "orgID": orgID?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Variables>.Type = InfluxDB2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get a variable
     
     - parameter variableID: (path) The variable ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVariablesID(variableID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: Variable?,_ error: Error?) -> Void)) {
        getVariablesIDWithRequestBuilder(variableID: variableID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a variable
     - GET /variables/{variableID}
     - parameter variableID: (path) The variable ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Variable> 
     */
    open class func getVariablesIDWithRequestBuilder(variableID: String, zapTraceSpan: String? = nil) -> RequestBuilder<Variable> {
        var path = "/variables/{variableID}"
        let variableIDPreEscape = "\(APIHelper.mapValueToPathItem(variableID))"
        let variableIDPostEscape = variableIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{variableID}", with: variableIDPostEscape, options: .literal, range: nil)
        let URLString = InfluxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Variable>.Type = InfluxDB2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     List all labels for a variable
     
     - parameter variableID: (path) The variable ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVariablesIDLabels(variableID: String, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: LabelsResponse?,_ error: Error?) -> Void)) {
        getVariablesIDLabelsWithRequestBuilder(variableID: variableID, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List all labels for a variable
     - GET /variables/{variableID}/labels
     - parameter variableID: (path) The variable ID. 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<LabelsResponse> 
     */
    open class func getVariablesIDLabelsWithRequestBuilder(variableID: String, zapTraceSpan: String? = nil) -> RequestBuilder<LabelsResponse> {
        var path = "/variables/{variableID}/labels"
        let variableIDPreEscape = "\(APIHelper.mapValueToPathItem(variableID))"
        let variableIDPostEscape = variableIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{variableID}", with: variableIDPostEscape, options: .literal, range: nil)
        let URLString = InfluxDB2API.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LabelsResponse>.Type = InfluxDB2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Update a variable
     
     - parameter variableID: (path) The variable ID. 
     - parameter variable: (body) Variable update to apply 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func patchVariablesID(variableID: String, variable: Variable, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: Variable?,_ error: Error?) -> Void)) {
        patchVariablesIDWithRequestBuilder(variableID: variableID, variable: variable, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update a variable
     - PATCH /variables/{variableID}
     - parameter variableID: (path) The variable ID. 
     - parameter variable: (body) Variable update to apply 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Variable> 
     */
    open class func patchVariablesIDWithRequestBuilder(variableID: String, variable: Variable, zapTraceSpan: String? = nil) -> RequestBuilder<Variable> {
        var path = "/variables/{variableID}"
        let variableIDPreEscape = "\(APIHelper.mapValueToPathItem(variableID))"
        let variableIDPostEscape = variableIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{variableID}", with: variableIDPostEscape, options: .literal, range: nil)
        let URLString = InfluxDB2API.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: variable)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Variable>.Type = InfluxDB2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Create a variable
     
     - parameter variable: (body) Variable to create 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postVariables(variable: Variable, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: Variable?,_ error: Error?) -> Void)) {
        postVariablesWithRequestBuilder(variable: variable, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a variable
     - POST /variables
     - parameter variable: (body) Variable to create 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Variable> 
     */
    open class func postVariablesWithRequestBuilder(variable: Variable, zapTraceSpan: String? = nil) -> RequestBuilder<Variable> {
        let path = "/variables"
        let URLString = InfluxDB2API.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: variable)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Variable>.Type = InfluxDB2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Add a label to a variable
     
     - parameter variableID: (path) The variable ID. 
     - parameter labelMapping: (body) Label to add 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postVariablesIDLabels(variableID: String, labelMapping: LabelMapping, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: LabelResponse?,_ error: Error?) -> Void)) {
        postVariablesIDLabelsWithRequestBuilder(variableID: variableID, labelMapping: labelMapping, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add a label to a variable
     - POST /variables/{variableID}/labels
     - parameter variableID: (path) The variable ID. 
     - parameter labelMapping: (body) Label to add 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<LabelResponse> 
     */
    open class func postVariablesIDLabelsWithRequestBuilder(variableID: String, labelMapping: LabelMapping, zapTraceSpan: String? = nil) -> RequestBuilder<LabelResponse> {
        var path = "/variables/{variableID}/labels"
        let variableIDPreEscape = "\(APIHelper.mapValueToPathItem(variableID))"
        let variableIDPostEscape = variableIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{variableID}", with: variableIDPostEscape, options: .literal, range: nil)
        let URLString = InfluxDB2API.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: labelMapping)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LabelResponse>.Type = InfluxDB2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Replace a variable
     
     - parameter variableID: (path) The variable ID. 
     - parameter variable: (body) Variable to replace 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putVariablesID(variableID: String, variable: Variable, zapTraceSpan: String? = nil, apiResponseQueue: DispatchQueue = InfluxDB2API.apiResponseQueue, completion: @escaping ((_ data: Variable?,_ error: Error?) -> Void)) {
        putVariablesIDWithRequestBuilder(variableID: variableID, variable: variable, zapTraceSpan: zapTraceSpan).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Replace a variable
     - PUT /variables/{variableID}
     - parameter variableID: (path) The variable ID. 
     - parameter variable: (body) Variable to replace 
     - parameter zapTraceSpan: (header) OpenTracing span context (optional)
     - returns: RequestBuilder<Variable> 
     */
    open class func putVariablesIDWithRequestBuilder(variableID: String, variable: Variable, zapTraceSpan: String? = nil) -> RequestBuilder<Variable> {
        var path = "/variables/{variableID}"
        let variableIDPreEscape = "\(APIHelper.mapValueToPathItem(variableID))"
        let variableIDPostEscape = variableIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{variableID}", with: variableIDPostEscape, options: .literal, range: nil)
        let URLString = InfluxDB2API.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: variable)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Zap-Trace-Span": zapTraceSpan?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Variable>.Type = InfluxDB2API.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
}