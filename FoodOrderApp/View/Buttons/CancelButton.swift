//
//  CancelButton.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 04/08/24.
//

import SwiftUI

struct CancelButton: View {
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(.brandPrimaryColor)
                .frame(width: 35 , height: 35).padding()
            Image(systemName: "xmark")
                .frame(width: 40 , height: 40)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    CancelButton()
}
