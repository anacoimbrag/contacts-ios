//
//  ContentView.swift
//  Declarative UI
//
//  Created by Ana Coimbra on 25/06/20.
//  Copyright © 2020 Ana Coimbra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ContactListView()
                .navigationBarTitle(Text("Contacts"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
