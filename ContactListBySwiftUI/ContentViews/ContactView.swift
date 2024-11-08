//
//  ContactView.swift
//  ContactListBySwiftUI
//
//  Created by Winky51 on 05.11.2024.
//

import SwiftUI

struct ContactView: View {
    
    let contact: Contact
    
    var body: some View {
        List {
            HStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
            }
                .frame(width: 300, height: 150)
             
            Label(contact.numberPhone, systemImage: "phone")
            Label(contact.email, systemImage: "tray")
        }
        .padding(.top, 10)
        .navigationTitle(contact.fullName)
        .scrollClipDisabled()
    }
}

#Preview {
    ContactView(contact: Contact.init(name: "Winky", firstName: "Winky", id: UUID(), email: "winky@example.com", numberPhone: "+380999999999"))
}
