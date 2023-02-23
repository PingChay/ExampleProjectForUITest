//
//  ContentView.swift
//  ExampleProjectForUITest
//
//  Created by Saran Nonkamjan on 23/2/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                pushView
                modalView
            }
            .navigationTitle("ExampleProject")
        }
        .padding()
    }

    var pushView: some View {
        NavigationLink {
            PushView()
        } label: {
            Text("Push View")
        }
        .accessibilityIdentifier("contentview_modal")
    }

    var modalView: some View {
        Button {
            isPresented.toggle()
        } label: {
            Text("Modal View")
        }.fullScreenCover(isPresented: $isPresented) {
            ModalView()
        }
        .accessibilityIdentifier("contentview_push")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
