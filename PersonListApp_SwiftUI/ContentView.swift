//
//  ContentView.swift
//  PersonListApp_SwiftUI
//
//  Created by Andrey on 04.08.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let contacts = Person.getContactList()
    
    var body: some View {
        TabView {
            ShortContactListScreen(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Short list")
                }
            FullContactListScreen(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Full list")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
