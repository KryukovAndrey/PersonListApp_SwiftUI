//
//  FullContactListScreen.swift
//  PersonListApp_SwiftUI
//
//  Created by Andrey on 05.08.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

struct FullContactListScreen: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) { person in
                    Section(header: Text("\(person.fullName)")) {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text("\(person.phone)")
                        }
                        HStack {
                            Image(systemName: "envelope")
                                .foregroundColor(.blue)
                            Text("\(person.email)")
                        }
                    }
                }
            }.navigationBarTitle("Full Contact List")
        }
    }
}



struct FullContactListScreen_Previews: PreviewProvider {
    static var previews: some View {
        FullContactListScreen(contacts: Person.getContactList())
    }
}

