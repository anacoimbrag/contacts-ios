//
//  Contact.swift
//  Declarative UI
//
//  Created by Ana Coimbra on 25/06/20.
//  Copyright © 2020 Ana Coimbra. All rights reserved.
//

import Foundation

struct Contact: Hashable, Codable {
    var id: String
    var name: String
    var image: String
    var phone: String
    var email: String
}

struct ContactList: Decodable {
    var contacts: [Contact]
}
