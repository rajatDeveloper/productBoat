//
//  Alert.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 04/08/24.
//

import SwiftUI

struct AlertItem  : Identifiable{
    let id = UUID()
    let title: Text
    let message : Text
    let dismissButton : Alert.Button
}

struct AlertContext {
    
    //MARK: - Network Alert
    static let invalidData = AlertItem(title: Text("Invaild Data"), message: Text("Logic to decode the data is wrong"), dismissButton: .default(Text("ok")))
    
    static let invalidResponse = AlertItem(title: Text("Invaild response"), message: Text("May be you backend is giving some thing and you thinking to be something"), dismissButton: .default(Text("ok")))
    
    static let invalidURL = AlertItem(title: Text("Invaild Url"), message: Text("May be your url structure is invalid"), dismissButton: .default(Text("ok")))
    
    static let unableToComplete = AlertItem(title: Text("Unable to complete"), message: Text("We are unable to complete the fetch process"), dismissButton: .default(Text("ok")))
    
    //MARK: - Validation Alert
    static let emailInValid = AlertItem(title: Text("Email is invalid"), message: Text("Please check the fromat of email you entered"), dismissButton: .default(Text("ok")))
    
    static let invalidForm = AlertItem(title: Text("Enter all details"), message: Text("Please fill all fields"), dismissButton: .default(Text("ok")))
    
    //MARK: - Success Alert of form
    static let successSaveFormAlert = AlertItem(title: Text("User Data Saved"), message: Text("We have saved user data successfully in local storage!"), dismissButton: .default(Text("ok")))
    //MARK: - Faild Alert of form save data
    static let faildedSaveFormAlert = AlertItem(title: Text("Unable to save data"), message: Text("Error in formating of data or some logical error"), dismissButton: .default(Text("ok")))
    
    
}
