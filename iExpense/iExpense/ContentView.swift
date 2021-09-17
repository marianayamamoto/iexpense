//
//  ContentView.swift
//  iExpense
//
//  Created by Mariana Yamamoto on 9/17/21.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct ContentView: View {
    @ObservedObject private var user = User()

       var body: some View {
           VStack {
               Text("Your name is \(user.firstName) \(user.lastName).")

               TextField("First name", text: $user.firstName)
               TextField("Last name", text: $user.lastName)
           }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
