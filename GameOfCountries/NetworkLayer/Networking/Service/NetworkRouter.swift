//
//  NetworkRouter.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?,
                                            _ response: URLResponse?,
                                            _ error: Error?) -> Void

protocol NetworkRouter: class {
    associatedtype EndPoint: EndPointType
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
