//
//  DessertSearchService.swift
//  Fetch_iOSCodingChallenge (iOS)
//
//  Created by Shak Feizi on 6/24/23.
//

import Foundation
import Combine


class DessertService {
    //MARK: - Properties
    static var shared = DessertService()
    private var baseURL = "https://themealdb.com/api/json/v1/1/"
    
    //MARK: - Lifecycles
    
    //MARK: - Functions
    func fetchDesserts() -> AnyPublisher<[Dessert]?, NetworkError> {
        guard let url = URL(string: baseURL + "filter.php?c=Dessert") else {
            return Fail(error: .invalidURL)
                .eraseToAnyPublisher()
        }
        let request = URLRequest(url: url)
        return URLSession.shared.dataTaskPublisher(for: request)
            .receive(on: DispatchQueue.main)
            .mapError({ error -> NetworkError in
                print(error)
                return .noData
            })
            .map(\.data)
            .decode(type: Response.self, decoder: JSONDecoder())
            .tryMap({ response -> [Dessert]? in
                return response.desserts
            })
            .mapError({ error -> NetworkError in
                print(error)
                return .unableToDecode
            })
            .eraseToAnyPublisher()
    }
    
    func fetchDessertDetails(id: String?) -> AnyPublisher<Dessert?, NetworkError> {
        guard let id = id else {
            print("Error: Unable to detect id!")
            return Fail(error: .invalidId)
                .eraseToAnyPublisher()
        }
        guard let url = URL(string: baseURL + "lookup.php?i=" + id) else {
            return Fail(error: .invalidURL)
                .eraseToAnyPublisher()
        }
        let request = URLRequest(url: url)
        return URLSession.shared.dataTaskPublisher(for: request)
            .receive(on: DispatchQueue.main)
            .mapError({ error -> NetworkError in
                print(error)
                return .noData
            })
            .map(\.data)
            .decode(type: Response.self, decoder: JSONDecoder())
            .map { response in
                let dessert = response.desserts?.first
                return dessert
            }
            .mapError({ error -> NetworkError in
                print(error)
                return .unableToDecode
            })
            .eraseToAnyPublisher()
    }
}
