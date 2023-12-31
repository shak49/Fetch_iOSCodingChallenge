//
//  DessertDetailView.swift
//  Fetch_iOSCodingChallenge (iOS)
//
//  Created by Shak Feizi on 6/29/23.
//

import SwiftUI

struct DessertDetailView: View {
    //MARK: - Properties
    var id: String
    var thumbnaile: String
    @ObservedObject var viewModel = DessertListViewModel()
    
    //MARK: - Lifecycles
    var body: some View {
        VStack {
            VStack {
                AsyncImage(url: URL(string: thumbnaile)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView("")
                    case .success(let image):
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .padding(.bottom, 8)
                    case .failure:
                        Image(systemName: "placeholder-image")
                    }
                }
                Text(viewModel.dessert?.title ?? "")
                    .font(.system(size: 32))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing], 32)
                    .padding(.bottom, 16)
            }
            .frame(maxWidth: .infinity)
            .background(.regularMaterial)
            ScrollView {
                Text(viewModel.dessert?.instruction ?? "")
                    .padding(.top, 16)
                    .padding([.leading, .trailing], 32)
                VStack {
                    Group {
                        HStack {
                            Text(viewModel.dessert?.ingredient1 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure1 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient2 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure2 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient3 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure3 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient4 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure4 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient5 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure5 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient6 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure6 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient7 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure7 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient8 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure8 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient9 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure9 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient10 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure10 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                    }
                    Group {
                        HStack {
                            Text(viewModel.dessert?.ingredient11 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure11 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient12 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure12 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient13 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure13 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient14 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure14 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient15 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure15 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient16 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure16 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient17 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure17 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient18 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure18 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient19 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure19 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                        HStack {
                            Text(viewModel.dessert?.ingredient20 ?? "")
                                .frame(width: 200, height: 15, alignment: .leading)
                            Spacer()
                            Text(viewModel.dessert?.measure20 ?? "")
                                .frame(width: 100, height: 15, alignment: .trailing)
                                .foregroundColor(.blue)
                        }
                    }
                }
                .padding([.top, .leading, .trailing, .bottom], 32)
            }
        }
        .onAppear {
            viewModel.fetchDessertDetails(id: id)
        }
    }
}

struct DessertDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DessertDetailView(id: "", thumbnaile: "")
    }
}
