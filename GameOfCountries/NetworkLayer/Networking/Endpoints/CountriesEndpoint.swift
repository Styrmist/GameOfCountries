//
//  CountriesEndpoint.swift
//  GameOfCountries
//
//  Created by Kirill Danilov on 24/01/2021.
//

import Foundation

enum CountriesApi {
    case all
    case name(_ name: String)
    case fullName(_ name: String)
    case code(_ code: String)
    case codes(_ codes: [String])
    case currency(_ currency: String)
    case language(_ language: String)
    case capital(_ capital: String)
    case callingCode(_ code: Int)
    case region(_ region: String) //Region
    case regionalBloc(_ bloc: RegionalBloc)
}

extension CountriesApi: EndPointType {

    var environmentBaseURL : String {
        switch NetworkManager.environment {
            case .production: return "https://api.themoviedb.org/3/movie/"
            case .qa: return "https://qa.themoviedb.org/3/movie/"
            case .staging: return "https://staging.themoviedb.org/3/movie/"
        }
    }

    var baseURL: URL {
        guard let url = URL(string: environmentBaseURL) else { fatalError("baseURL could not be configured.")}
        return url
    }

    var path: String {
        switch self {
            case .recommended(let id):
                return "\(id)/recommendations"
            case .popular:
                return "popular"
            case .newMovies:
                return "now_playing"
            case .video(let id):
                return "\(id)/videos"
        }
    }

    var httpMethod: HTTPMethod {
        return .get
    }

    var task: HTTPTask {
        switch self {
            case .newMovies(let page):
                return .requestParameters(bodyParameters: nil,
                                          bodyEncoding: .urlEncoding,
                                          urlParameters: ["page":page,
                                                          "api_key":NetworkManager.MovieAPIKey])
            default:
                return .request
        }
    }

    var headers: HTTPHeaders? {
        return nil
    }
}
