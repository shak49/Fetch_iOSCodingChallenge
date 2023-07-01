//
//  DessertListViewModel.swift
//  Fetch_iOSCodingChallenge (iOS)
//
//  Created by Shak Feizi on 6/27/23.
//

import Foundation
import Combine


class DessertListViewModel: ObservableObject {
    //MARK: - Properties
    @Published var desserts: [Dessert] = []
    @Published var dessert: Dessert?
    private var cancellables = Set<AnyCancellable>()
    
    //MARK: - Lifecycles
    init() {
        fetchDesserts()
    }
    
    //MARK: - Functions
    func fetchDesserts() {
        DessertService.shared.fetchDesserts()
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                case .finished:
                    print("Fetching desserts was successfully finished!")
                }
            } receiveValue: { [weak self] desserts in
                guard let desserts = desserts else { return }
                self?.desserts = desserts
            }
            .store(in: &cancellables)
    }
    
    func fetchDessertDetails(id: String?) {
        guard let id = id else { return }
        DessertService.shared.fetchDessertDetails(id: id)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                case .finished:
                    print("Fetching dessert details was successfully finished!")
                }
            } receiveValue: { [weak self] dessert in
                guard let dessert = dessert else { return }
                self?.dessert = dessert
            }
            .store(in: &cancellables)
    }
}
