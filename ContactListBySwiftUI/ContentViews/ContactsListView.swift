//
//  ContactsListView.swift
//  ContactListBySwiftUI
//
//  Created by Winky51 on 05.11.2024.
//

import SwiftUI

struct ContactsListView: View {
    
    let contacts: [Contact]
    
    var body: some View {
        List(contacts) { contact in
            NavigationLink(contact.fullName) {
                ContactView(contact: contact)
            }
        }
       .listStyle(.plain)
    }
}

#Preview {
    ContactsListView(contacts: Contact.getContacts())
}
