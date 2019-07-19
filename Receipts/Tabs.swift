//
//  ContentView.swift
//  Receipts
//
//  Created by Mohammed Ibrahim on 2019-07-10.
//  Copyright © 2019 Mohammed Ibrahim. All rights reserved.
//

import SwiftUI
import Vision
import VisionKit

// Housing view for the two main views:
//      - Home
//      - My Receipts
struct Tabs : View {
    @State private var selection = 0

    var body: some View {
        TabbedView(selection: $selection) {
            Home()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                }
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "folder.fill")
                        Text("My Receipts")
                    }
                }
                .tag(1)
        }
    }
    
}

#if DEBUG
struct Tabs_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            Tabs()
        }
    }
}
#endif
