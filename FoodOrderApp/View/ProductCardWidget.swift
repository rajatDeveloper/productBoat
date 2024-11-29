//
//  ProductCardWidget.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 03/08/24.
//

import SwiftUI


struct ProductCardWidget: View {
    let item : ProductModel
    var body: some View {
        HStack{
            NetworkImageView(imageData: item.imageData ,         width: 120,
                             height: 90)

            
            VStack(
                alignment: .leading ,
                spacing: 5
            ){
                Text(item.productName)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(item.afterDiscountPrice)")
                    .foregroundColor(.secondary)
                    .font(.title2)
                    .fontWeight(.medium)
                    
                
            }.padding(.leading)
             
        }
    }
}

#Preview {
    ProductCardWidget(
        item: MockData.productModel)
}
