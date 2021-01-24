//
//  EndPointType.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//

import Foundation
import Network

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
