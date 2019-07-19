//
//  Home.swift
//  Receipts
//
//  Created by Mohammed Ibrahim on 2019-07-10.
//  Copyright © 2019 Mohammed Ibrahim. All rights reserved.
//

import SwiftUI
import Vision
import VisionKit

struct Home : View {
    @State var isScanning = false

    var body: some View {
        VStack {
            // Top Title View
            HStack() {
                VStack(alignment: .leading) {
                    Text("Scan")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    
                    Text("Add a new receiept")
                        .font(.headline)
                        .opacity(50/100)
                }
                
                // Used to align the text componenets to the left as it fills the rest of the row (makes full-width)
                Spacer()
            }
            .padding()
            .padding(.top, 30)
                        
            // Rectangle view for bug report message
            ZStack {
                Rectangle()
                    .cornerRadius(7)
                    .foregroundColor(Color("GrayAdapt"))
                    .frame(height: 120)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Found a bug?")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .opacity(77/100)
                    
                    Text("Found a bug? Have any questions or suggestions? Don’t hesitate to contact me!")
                        .font(.system(size: Length(15)))
                        .fontWeight(.bold)
                        .lineLimit(nil)
                        .opacity(44/100)
                }
                .padding(.horizontal)
            }
                .padding(.horizontal)

            
            Spacer()

            // List to show instructions, with icons and steps
            VStack(spacing: 30) {
                HStack(alignment: .center) {
                    Image("bill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .frame(width: 75, height: 50)
                        .opacity(77/100)
                    
                    VStack(alignment: .leading) {
                        Text("Scan the receipt")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .opacity(77/100)
                        
                        Text("Clicking the button below to use your camera to scan your receipt.")
                            .font(.system(size: Length(15)))
                            .fontWeight(.bold)
                            .opacity(44/100)
                            .lineLimit(nil)
                            .frame(height: 50)
                    }
                }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)


                HStack(alignment: .center) {
                    Image("contract")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .frame(width: 75, height: 50)
                        .opacity(77/100)
                    
                    VStack(alignment: .leading) {
                        Text("Fix up")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .opacity(77/100)
                        
                        Text("Add any missing fields and correct any mistakes made, if any.")
                            .font(.system(size: Length(15)))
                            .fontWeight(.bold)
                            .opacity(44/100)
                            .lineLimit(nil)
                            .frame(height: 50)
                    }
                }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)

                
                HStack(alignment: .center) {
                    Image("folder")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .frame(width: 75, height: 50)
                        .opacity(77/100)

                                        
                    VStack(alignment: .leading) {
                        Text("Save")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .opacity(77/100)
                        
                        Text("Save to your receipts. All receipts are stores on your device.")
                            .font(.system(size: Length(15)))
                            .fontWeight(.bold)
                            .opacity(44/100)
                            .lineLimit(nil)
                            .frame(height: 50)
                    }
                }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .topLeading)


            }
                .padding()
            
            Spacer()

            Button(action: {
                self.isScanning.toggle()
                print("Scanning!")
            }) {
                HStack {
                    Spacer()
                    Text("Add Receipt")
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .font(.system(size: Length(18)))
                    Spacer()
                }
            }
                .padding([.top, .bottom], 20)
                .background(Color(red: 67/255, green: 150/255, blue: 255/255))
                .cornerRadius(7)
                .padding([.top, .leading, .trailing])
                .sheet(isPresented: $isScanning, content: { Scan() })

            Text("This app does not store any information. Everything is stored on-device.")
                .font(.system(size: 10, design: .default))
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .padding(.bottom, 50)
                .opacity(77/100)

            
        }
    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            Home().previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
        }
    }
}
#endif
