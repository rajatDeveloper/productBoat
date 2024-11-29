//
//  AccountModelView.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 04/08/24.
//



import SwiftUI

final class AccountModelView : ObservableObject{
    
    @AppStorage("user") var userData: Data?
    
    @Published  var user = User()
    
    @Published var alertItem : AlertItem?
    
    
    func saveChanges(){
        guard isValidForm else {return}
        
        do {
            let data = try  JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.successSaveFormAlert
        }catch {
            alertItem = AlertContext.faildedSaveFormAlert
        }
    }
    
    
    func retriveData(){
        guard let userData = userData else {
            return
        }
        
        do {
            let data = try  JSONDecoder().decode(User.self, from: userData)
            user = data
            
        }catch {
            alertItem = AlertContext.faildedSaveFormAlert
        }
        
    }
    
    
    var isValidForm : Bool{
        
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.emailName.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.emailName.isValidEmail else {
            alertItem = AlertContext.emailInValid
            return false
        }
        
        return true
        
    }
    
    
   
    
}
