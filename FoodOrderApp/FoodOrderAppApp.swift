//
//  FoodOrderAppApp.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 21/07/24.
//

import SwiftUI

@main
struct FoodOrderAppApp: App {
    var order  = Order()
    
    var body: some Scene {
        WindowGroup {
            FoodAppTabView().environmentObject(order)
        }
    }
}
