//
//  Contacts.swift
//  ContactListBySwiftUI
//
//  Created by Winky51 on 05.11.2024.
//

import Foundation

struct Contact: Identifiable {
    let name: String
    let firstName: String
    let id: UUID
    let email: String
    let numberPhone: String
    var fullName: String {
        "\(name) \(firstName)"
        }
    
    
    static func getContacts() -> [Contact] {
        let data = DataStore.shared
        var contacts: [Contact] = []
        
        let names = data.names.shuffled()
        let firstNames = data.firstNames.shuffled()
        let emails = data.emails.shuffled()
        let phoneNumbers = data.phoneNumbers.shuffled()
        
        let minimumCount = min(
            names.count,
            firstNames.count,
            emails.count,
            phoneNumbers.count
            )
        
        for index in 0...minimumCount - 1 {
            let contact = Contact(
                name: names[index],
                firstName: firstNames[index],
                id: UUID(),
                email: emails[index],
                numberPhone: phoneNumbers[index]
            )
            
            contacts.append(contact)
        }
        
        return contacts

    }
    
}
