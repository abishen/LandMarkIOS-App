//
//  ContentView.swift
//  LandMarks
//
//  Created by Dillon Dhayanandan on 30/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MapView()
            .ignoresSafeArea(edges: .top)
        .frame(height: 300)
            CircleImage()
            .offset(y: -130)
            .padding(.bottom, -130)
        VStack {
            VStack {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                                      .font(.subheadline)
                }
                Divider()


                            Text("About Turtle Rock")
                                .font(.title2)
                            Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
