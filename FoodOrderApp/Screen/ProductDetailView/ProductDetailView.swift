//
//  ProductDetailView.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 04/08/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var order : Order
    
    var product : ProductModel
    
    @Binding var isDetailViewShowing : Bool
    
    
    var body: some View {
        VStack{
            NetworkImageView(imageData: product.imageData,
                             width: 320,
                             height: 200).padding()
            
            VStack{
                Text(product.productName)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(product.shortDes)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                
            }
            .padding()
            
            HStack (
                spacing : 40
            ){
                
                BodyBlock(title: "Category", smallTitle: product.category)
              
                BodyBlock(title: "MRP", smallTitle: "$\(product.mainPrice)")
            
                BodyBlock(title: "Sell Price", smallTitle: "$\(product.afterDiscountPrice)")
                
            }
            
            Spacer()
            
            Button{
                order.addItem(product)
                isDetailViewShowing = false
            } label: {
//                DetailViewButton(title: "Add to cart 🛒")
                
                Text("Add to cart 🛒")
            }
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
            
            .padding(.bottom , 30)
            
            
          
            
        }
        .frame(width: 320 , height:  525)
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 40)
        .overlay(
            alignment : .topTrailing ,
            content: {
                Button{
                    isDetailViewShowing = false 
                }label: {
                
                        CancelButton()
                    
                }
                    
        })
    }
}

#Preview {
    ProductDetailView(
        product: MockData.productModel ,
        isDetailViewShowing: .constant(true))
    
}





struct BodyBlock  : View {
    var title: String
    var smallTitle : String
    var body: some View{
        VStack{
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
            Text(smallTitle)
                .foregroundColor(.secondary)
                .font(.body)
                .fontWeight(.semibold)
                .italic()
                
        }
    }
}



