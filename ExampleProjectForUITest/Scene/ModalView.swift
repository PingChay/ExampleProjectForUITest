//
//  ModalView.swift
//  ExampleProjectForUITest
//
//  Created by Saran Nonkamjan on 23/2/2566 BE.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.dismiss) var dismiss

    @State private var username: String = ""
    @State private var usernameText: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Modal View Presented")
                    .accessibilityIdentifier("modalview_text")

                TextField("username", text: $username)
                    .accessibilityIdentifier("modalview_textfield")

                Button {
                    usernameText = username
                } label: {
                    Text("Click")
                }
                .fontWeight(.bold)
                .accessibilityIdentifier("modalview_button")

                Text(usernameText)
                    .foregroundColor(.red)
                    .font(.footnote)
                    .accessibilityIdentifier("modalview_username")
            }
            .padding(.leading, 16)
            .navigationTitle("ModalView")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                    .accessibilityIdentifier("modalview_close")
                }
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
