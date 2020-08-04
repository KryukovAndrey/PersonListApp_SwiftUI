//
//  ContactDetails.swift
//  PersonListApp_SwiftUI
//
//  Created by Andrey on 04.08.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

struct ContactDetails: View {
    @Binding var showModal: Bool
    
    let person: Person
    
    var body: some View {
        VStack {
            HStack {
                Text("\(person.fullName)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                Button("Done") {
                    self.showModal = false
                }
            }
            .padding(.bottom)
            
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(alignment: .center)
                .frame(width: 150, height: 150)
                .opacity(0.4)
                .padding(.bottom, 20.0)
            
            VStack (alignment: .leading) {
                Text("Phone: \(person.phone)")
                    .padding(.bottom, 8.0)
                Text("Email: \(person.email)")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 25))
            
            Spacer()
        }
        .padding(10)
    }
}

struct ContactDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetails(showModal: .constant(false), person: Person.getContactList()[0])
    }
}


