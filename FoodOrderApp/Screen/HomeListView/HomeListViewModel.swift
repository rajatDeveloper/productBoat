//
//  HomeListViewModel.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 04/08/24.
//

import SwiftUI


final class HomeListViewModel : ObservableObject {
    
    
    @Published var productList: [ProductModel] = []
    @Published var alertItem : AlertItem?
    @Published var isLoading = false
    @Published var isDetailViewShowing = false
    @Published  var selectedProduct : ProductModel?
    
    
    
    func getProductData(){
        self.isLoading = true
        
        Task{
            do{
                productList = try await NetworkManager.shared.getProductData()
                isLoading = false
            }catch{
                alertItem = AlertContext.invalidResponse
                isLoading = false
            }
        }
      
    }
    
//    
//    func getProductData(){
//        self.isLoading = true
//        NetworkManager.shared.getProductData{
//            result in
//            DispatchQueue.main.async {
//                self.isLoading = false
//                switch result {
//                case .success(let productData):
//                    self.productList = productData
//                    
//                case .failure(let error ):
//                    switch error {
//                    case .invalidData :
//                        self.alertItem = AlertContext.invalidData
//                    case .invalidUrl:
//                        self.alertItem = AlertContext.invalidURL
//                    case .invalidresponse:
//                        self.alertItem = AlertContext.invalidResponse
//                    case .unableTpComplete:
//                        self.alertItem = AlertContext.unableToComplete
//                    }
//                }
//
//            }
//        }
//    }
}

