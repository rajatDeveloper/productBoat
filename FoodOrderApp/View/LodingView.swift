//
//  LodingView.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 04/08/24.
//

import SwiftUI

struct ActivityIndictor :  UIViewRepresentable {
    
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndictor = UIActivityIndicatorView(style: .large)
        activityIndictor.color = UIColor.brandPrimaryUIColor
        activityIndictor.startAnimating()
        return activityIndictor
        
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
}

struct LoadingView : View {
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            ActivityIndictor()
        }
    }
    
}
