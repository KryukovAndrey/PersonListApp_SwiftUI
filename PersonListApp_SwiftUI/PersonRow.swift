//
//  PersonRow.swift
//  PersonListApp_SwiftUI
//
//  Created by Andrey on 04.08.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

struct PersonRow: View {
    @State private var isPresented = false
    
    let person: Person

    var body: some View {
        Button(action: { self.isPresented.toggle() }) {
            HStack {
                Text("\(person.fullName)")
                    .frame(width: 200, alignment: .leading)
                Spacer()
            }.sheet(isPresented: $isPresented, onDismiss: {
                print("Modal dismissed. State now \(self.isPresented)")
            }) {
                ContactDetails(showModal: self.$isPresented, person: self.person)
            }
        }
    }
}



struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person.getContactList()[0])
    }
}
