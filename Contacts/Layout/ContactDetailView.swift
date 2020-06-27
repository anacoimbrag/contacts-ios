//
//  ContactDetailView.swift
//  Declarative UI
//
//  Created by Ana Coimbra on 27/06/20.
//  Copyright © 2020 Ana Coimbra. All rights reserved.
//

import SwiftUI

struct ContactDetailView: View {
    var contact: Contact
    
    var body: some View {
        VStack {
            CircleImage(url: contact.image)
                .frame(width: 100, height: 100)

            VStack(alignment: .leading) {
                Text(contact.name)
                    .font(.title)
                    .foregroundColor(.primary)

                
                Text(contact.email)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Button(action: {
                    let telephone = "tel://"
                    let formattedString = telephone + self.contact.phone
                    guard let url = URL(string: formattedString) else { return }
                    UIApplication.shared.open(url)
                }) {
                Text(contact.phone)
                    .font(.subheadline)
                    .foregroundColor(.blue)
                }
            }
            Spacer()
        }
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let contact = Contact(id: "1234", name: "Ana Coimbra", image: "https://i.pravatar.cc/300", phone: "(xx) xxxx-xxxx", email: "ana@email.com")
        return ContactDetailView(contact: contact)
    }
}
