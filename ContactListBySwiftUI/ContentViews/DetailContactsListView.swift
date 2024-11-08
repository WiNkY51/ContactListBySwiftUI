//
//  DetailContactsListView.swift
//  ContactListBySwiftUI
//
//  Created by Winky51 on 05.11.2024.
//

import SwiftUI

struct DetailContactsListView: View {
    @State private var singleSelection: UUID?
    let contacts: [Contact]
    
    var body: some View {
        List(selection: $singleSelection) {
            ForEach(contacts){ contact in
                Section(header: Text(contact.fullName).bold()) {
                    Label(contact.numberPhone, systemImage: "phone")
                    Label(contact.email, systemImage: "tray")
                }
            }
        }
        .padding()
        .listStyle(.plain)
    }
}
#Preview {
    DetailContactsListView(contacts: Contact.getContacts())
}
