//
//  URLRequestBuilder.swift
//  RickAndMortyApp
//
//  Created by Rodrigo Candido on 14/11/22.
//

import Foundation

enum HttpMethod: String {
    case GET
    case POST
    case PUT
    case DELETE
}


/// This protocol allows to create a Request object with its parameters and body if is needed
protocol URLRequestBuilder {
    associatedtype Response: Codable
    var apiMode: ApiMode { get }
    var baseURL: URL { get }
    var method: HttpMethod { get }
    var path: APIPath { get }
    var parameters: [String: String] { get }
    var body: [String: Any] { get }
    var headers: [String: String] { get }
}


extension URLRequestBuilder {

    var baseURL: URL {
        guard let baseURL = URL(string: apiMode.host) else {
            fatalError("URL not valid")
        }
        return baseURL
    }
    
    var method: HttpMethod { .POST }
    var parameters: [String: String] { .init() }
    var body: [String: Any] { .init() }
    var headers: [String: String] { .init() }

    func request() -> URLRequest {

        // Define the URL to call
        // E.G.: https://www.google.com/search
        let url = baseURL.appendingPathComponent(path.path)
        
        // App parameters if needed
        guard var components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
            fatalError("Not able to create components") // TODO: Better an error condition - Refactor?
        }

        if !parameters.isEmpty {
            components.queryItems = parameters.map { URLQueryItem(name: $0, value: $1) }
        }

        guard let finalUrl = components.url else {
            fatalError("Unable to retrieve final URL") // TODO: Better an error condition - Refactor?
        }


        // Create url request
        var request = URLRequest(url: finalUrl)

        // Add verb
        request.httpMethod = method.rawValue

        // Add body
        if !body.isEmpty {
            let jsonData = try? JSONSerialization.data(withJSONObject: body)
            request.httpBody = jsonData
            if let data = jsonData {
                request.addValue("\(data)", forHTTPHeaderField: "Content-Length")
            }
        }

        // Change header
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        return request
    }
}
