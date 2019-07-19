//
//  Receipts.swift
//  Receipts
//
//  Created by Mohammed Ibrahim on 2019-07-18.
//  Copyright © 2019 Mohammed Ibrahim. All rights reserved.
//

import SwiftUI

struct Receipts: View {
    var body: some View {
        // Top level VStack
        VStack {
            // Top Title View
            HStack() {
                VStack(alignment: .leading) {
                    Text("My Receipts")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                }
                
                // Used to align the text componenets to the left as it fills the rest of the row (makes full-width)
                Spacer()
            }
            .padding()
            
            List {
                Text("Receipt 1")
            }
                    
        }
    }
}

#if DEBUG
struct Receipts_Previews: PreviewProvider {
    static var previews: some View {
        Receipts()
    }
}
#endif
