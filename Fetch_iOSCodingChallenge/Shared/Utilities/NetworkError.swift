//
//  NetworkError.swift
//  Fetch_iOSCodingChallenge (iOS)
//
//  Created by Shak Feizi on 6/24/23.
//

import Foundation


enum NetworkError: LocalizedError {
    case invalidId
    case invalidThumbnailURL
    case invalidURL
    case thrownError(Error)
    case noData
    case unableToDecode
    
    var errorDescription: String? {
        switch self {
        case .invalidId:
            return "Unable to detect id."
        case .invalidThumbnailURL:
            return "Unable to find url for thumbnail."
        case .invalidURL:
            return "Unable to reach the server."
        case .thrownError(let error):
            return "Error: \(error.localizedDescription) -> \(error)"
        case .noData:
            return "The server responded with no data."
        case .unableToDecode:
            return "The server responded with bad data."
        }
    }
}
