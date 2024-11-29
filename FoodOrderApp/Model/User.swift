//
//  User.swift
//  FoodOrderApp
//
//  Created by RAJAT DHIMAN on 10/08/24.
//

import Foundation


struct User : Codable {
    var firstName = ""
    var lastName = ""
    var emailName = ""
    var birthDate = Date()
    
    var areYou18Plus = false
    var sendMeUpdates = false
}
