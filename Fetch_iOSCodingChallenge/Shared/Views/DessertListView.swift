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
                    AsyncImage(url: URL(string: dessert.thumbnail ?? "")) { phase in
                        switch phase {
                        case .empty:
                            ProgressView("")
                                .padding(8)
                        case .success(let image):
                            image.resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                                .padding(.trailing, 8)
                        case .failure:
                            Image(systemName: "placeholder-image")
                        }
                    }
                    Text(dessert.title ?? "")
                    NavigationLink("") {
                        DessertDetailView(id: dessert.id ?? "", thumbnaile: dessert.thumbnail ?? "")
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
