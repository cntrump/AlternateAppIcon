//
//  ContentView.swift
/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The main view of the AlternateAppIcon app.
*/

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: Model

    var body: some View {
        IconChooser()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPod touch (7th generation)")

            ContentView()
                .previewDevice("iPhone 13")

            ContentView()
                .previewDevice("iPad mini (6th generation)")

            ContentView()
                .previewDevice("iPad Pro (12.9-inch) (4th generation)")
        }
            .environmentObject(Model())
    }
}
