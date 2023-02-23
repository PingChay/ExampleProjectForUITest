//
//  PushView.swift
//  ExampleProjectForUITest
//
//  Created by Saran Nonkamjan on 23/2/2566 BE.
//

import SwiftUI

struct PushView: View {
    @State private var name: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text("Push View Presented")
                .frame(maxWidth: .infinity, alignment: .leading)
                .accessibilityIdentifier("pushview_text")

            Button {
                name = "is Click"
            } label: {
                Text("Click")
            }
            .fontWeight(.bold)
            .accessibilityIdentifier("pushview_button")

            Text(name)
                .foregroundColor(.red)
                .font(.footnote)
                .accessibilityIdentifier("pushview_name")
        }
        .padding(.leading, 16)
        .navigationTitle("PushView")
    }
}

struct PushView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PushView()
        }
    }
}
