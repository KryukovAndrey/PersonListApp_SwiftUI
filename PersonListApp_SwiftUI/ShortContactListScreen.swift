//
//  ShortContactListScreen.swift
//  PersonListApp_SwiftUI
//
//  Created by Andrey on 04.08.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

struct ShortContactListScreen: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts){ person in
                PersonRow(person: person)
            }
            .navigationBarTitle("Short Contact List")
        }
    }
}


struct ShortContactListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ShortContactListScreen(contacts: Person.getContactList())
    }
}
