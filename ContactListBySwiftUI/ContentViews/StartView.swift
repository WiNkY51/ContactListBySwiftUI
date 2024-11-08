//
//  StartView.swift
//  ContactListBySwiftUI
//
//  Created by Winky51 on 05.11.2024.
//

import SwiftUI

struct StartView: View {
    @State private var starttViewVM = StartViewViewModel()
    var body: some View {
        NavigationStack() {
            TabView {
                ContactsListView(contacts: starttViewVM.contacts)
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Contacts")
                    }
                DetailContactsListView(contacts: starttViewVM.contacts)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    StartView()
}
