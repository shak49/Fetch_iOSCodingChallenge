//
//  DessertListView.swift
//  Fetch_iOSCodingChallenge (iOS)
//
//  Created by Shak Feizi on 6/27/23.
//

import SwiftUI

struct DessertListView: View {
    //MARK: - Properties
    @ObservedObject private var viewModel = DessertListViewModel()
    
    //MARK: - Lifecycle
    var body: some View {
        NavigationView {
            List(viewModel.desserts, id: \.id) { dessert in
                HStack {
                    Text(dessert.title ?? "")
                    NavigationLink("") {
                        DessertDetailView(id: dessert.id ?? "")
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle(Text("Desserts"))
        }
    }
}

struct DessertListView_Previews: PreviewProvider {
    static var previews: some View {
        DessertListView()
    }
}
