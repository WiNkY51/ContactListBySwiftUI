//
//  StartViewViewModel.swift
//  ContactListBySwiftUI
//
//  Created by Winky51 on 05.11.2024.
//

import SwiftUI
import Observation

@Observable class StartViewViewModel{
    
    var contacts = Contact.getContacts()
}
