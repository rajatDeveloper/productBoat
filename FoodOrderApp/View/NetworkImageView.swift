//
//  NetworkImageView.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 04/08/24.
//

import SwiftUI

struct NetworkImageView: View {
    
    var imageData: String
    var width : CGFloat
    var height : CGFloat
    
    var body: some View {
        AsyncImage(url:  URL(string:imageData)) { phase in
                   if let image = phase.image {
                       image
                           .resizable()
                           .scaledToFit()
                   } else if phase.error != nil {
                       Text("Failed to load image")
                   } else {
                       ProgressView()
                   }
               }
               .aspectRatio(contentMode: .fit)
               .frame(width: width, height: height , alignment: .center)
            
               .cornerRadius(8)
    }
}

#Preview {
    NetworkImageView(
        imageData: "https://images.pexels.com/photos/90946/pexels-photo-90946.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        width: 120,
        height: 90)
}
