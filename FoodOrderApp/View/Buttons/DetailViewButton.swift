//
//  DetailViewButton.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 04/08/24.
//

import SwiftUI

struct DetailViewButton: View {
    var title : String
    var body: some View {
        Text(title)
           .font(.title3)
           .foregroundColor(.white)
           .fontWeight(.semibold)
           .frame(width: 260 , height: 60)
           .background(Color.brandPrimaryColor)
           .cornerRadius(10)
    }
}

#Preview {
    DetailViewButton(
    title: "test"
    )
}
