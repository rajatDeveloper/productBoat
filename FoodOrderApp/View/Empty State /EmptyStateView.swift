//
//  EmptyStateView.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 10/08/24.
//

import SwiftUI

struct EmptyStateView: View {
    
    var imageString : String
    var msg : String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack{
                Image(systemName: imageString)
                    .resizable()
                    .frame(width : 60 , height: 100 )
                
               
                Text(msg)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
            }
       
            
        }
    }
}

#Preview {
    EmptyStateView(
        imageString: "cart", msg: "Cart is empty"
    )
}
