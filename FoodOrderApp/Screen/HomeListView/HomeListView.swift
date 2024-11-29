//
//  HomeListView.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 03/08/24.
// 6: 23 


import SwiftUI

struct HomeListView: View {
    
    @StateObject var viewModel = HomeListViewModel()

    
    var body: some View {
        
        ZStack{
            NavigationView{
                List(viewModel.productList){ item in
                    
                    ProductCardWidget(item: item)
                        .onTapGesture {
                            viewModel.isDetailViewShowing = true
                            viewModel.selectedProduct = item ;
                            
                        }
                    
                }
                
                .navigationTitle("Product Boat ⛵️")
                .disabled(viewModel.isDetailViewShowing)
            }
            .task
            {
                viewModel.getProductData()
            }
//            .onAppear
//            {
//                viewModel.getProductData()
//            }
            .blur(radius:viewModel.isDetailViewShowing ? 35 : 0 )
            
            if viewModel.isDetailViewShowing {
                ProductDetailView(product:viewModel.selectedProduct! , isDetailViewShowing: $viewModel.isDetailViewShowing)
            }
            
            if viewModel.isLoading {
//                LoadingView()
                ProgressView()
            }
        }
        .alert(item : $viewModel.alertItem){ alertItem in
            
            Alert(title: alertItem.title , message:  alertItem.message , dismissButton:alertItem.dismissButton)
        }
     
    }
    
    

    
    
}

#Preview {
    HomeListView()
}
