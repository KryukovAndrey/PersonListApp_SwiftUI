//
//  Person.swift
//  PersonListApp_SwiftUI
//
//  Created by Andrey on 04.08.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import Foundation

struct Person: Identifiable {
    var id: Int
    var firstName: String
    var secondName: String
    var phone: Int
    var email: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
    
    init(id:Int, firstName: String, secondName: String, phone: Int, email: String) {
        self.id = id
        self.firstName = firstName
        self.secondName = secondName
        self.phone = phone
        self.email = email
    }
    
    static func getContactList() -> [Person] {
        
        var contactList: [Person] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let secondNames = DataManager.shared.secondNames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let email = DataManager.shared.emails.shuffled()
        
        for index in 0..<firstNames.count {
            let person = Person(id: index,
                                firstName: firstNames[index],
                                secondName: secondNames[index],
                                phone: phones[index],
                                email: email[index])
            
            contactList.append(person)
        }
        
        return contactList
    }
}
