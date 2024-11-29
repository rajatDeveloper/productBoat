//
//  CartView.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 03/08/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){ orderItem in
                            ProductCardWidget(item: orderItem)
                            
                        }.onDelete(perform: order.onDelete)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        
                    }label: {
                        DetailViewButton(title: "$\(order.totalPrice) - Place Order")
                        
//                        Text("$\(order.totalPrice) - Place Order")
                    }
//                    .buttonStyle(.bordered)
//                    .tint(.brandPrimary)
//                    .controlSize(.large)
                    .padding(.bottom , 20 )
                }
                if order.items.isEmpty {
                    EmptyStateView(imageString: "cart", msg: "There is no product in cart")
                }
            }
            .navigationTitle("Cart 🛒")
        }
    }
    
 
}

#Preview {
    CartView()
}
