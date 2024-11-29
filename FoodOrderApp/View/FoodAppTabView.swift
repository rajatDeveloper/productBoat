//
//  ContentView.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 21/07/24.
//

import SwiftUI

struct FoodAppTabView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        TabView{
            
        HomeListView()
                .tabItem {
                    Label("Home" , systemImage: "house")
//                    Image(systemName: "house")
//                    Text("Home")
                }
            
        AccountView()
                .tabItem {
                    Label("Account" , systemImage: "person")
//                    Image(systemName: "person")
//                    Text("Account")
                }
            
        CartView()
                .tabItem {
                    Label("Cart" , systemImage: "cart")
//                    Image(systemName: "cart")
//                    Text("Cart")
                }
                .badge(order.items.count)
            
        }
    }
}

#Preview {
    FoodAppTabView()
}
