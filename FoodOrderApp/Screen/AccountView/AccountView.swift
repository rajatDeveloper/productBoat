//
//  AccountView.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 03/08/24.
//

import SwiftUI

struct AccountView: View {
    enum FormTextField {
        case firstName , lastName , email
    }
   
    @StateObject var viewModel = AccountModelView()
    
    @FocusState private var foucedTextField : FormTextField?
    
    
  
    
    var body: some View {
        NavigationView{
            
            Form{
                
                Section(header: Text("Personal Info"), content: {
                    TextField("First Name" ,text: $viewModel.user.firstName)
                        .focused($foucedTextField , equals: .firstName)
                        .onSubmit {
                            foucedTextField = .lastName
                        }
                        .submitLabel(.next)
                    TextField("Last Name" ,text: $viewModel.user.lastName)
                        .focused($foucedTextField , equals: .lastName)
                        .onSubmit {
                            foucedTextField = .email
                        }
                        .submitLabel(.next)
                    TextField("Email" ,text: $viewModel.user.emailName)
                        .focused($foucedTextField , equals: .email)
                        .onSubmit {
                            foucedTextField = nil
                        }
                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthdate", selection: $viewModel.user.birthDate, displayedComponents: .date
                    )
                    
                    Button{
                        viewModel.saveChanges()
                    }label: {
                        Text("Save changes")
                    }
                    
                })
                
                Section(header: Text("Requests"), content: {
                    Toggle("Are you 18+" , isOn: $viewModel.user.areYou18Plus)
                        .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                    Toggle("Send me updates" , isOn: $viewModel.user.sendMeUpdates)
                        .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                })
                
            }
            .onAppear{
                viewModel.retriveData()
            }
            .navigationTitle("Account🧍‍♂️")
            .toolbar{
                ToolbarItemGroup(placement: .keyboard){
                    Button("Dismiss"){
                        foucedTextField = nil
                    }
                }
            }
        }
        .alert(item: $viewModel.alertItem ) { alertItem in
            Alert(title: alertItem.title , message: alertItem.message , dismissButton: alertItem.dismissButton)
            
        }
    }
}

#Preview {
    AccountView()
}
