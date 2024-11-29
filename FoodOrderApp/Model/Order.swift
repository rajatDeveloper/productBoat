//
//  Order.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 10/08/24.
//

import SwiftUI


final class Order : ObservableObject {
    @Published var items: [ProductModel] = []
    
    var totalPrice: Int {
        items.reduce(0) {$0 + $1.afterDiscountPrice }
    }
    func addItem(_ product : ProductModel){
        
        self.items.append(product)
    }
    
    func onDelete(at offesets : IndexSet){
        items.remove(atOffsets:offesets)
    }
    
}
