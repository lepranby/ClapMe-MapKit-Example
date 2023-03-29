//  ContentView.swift
//  ClapMe
//
//  Created by Aleksej Shapran on 29.03.23

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 335)

            CircleImage()
                .offset(x: 92, y: -150)
                .padding(.bottom, -220)

            VStack(alignment: .leading) {
                Text("Starbucks Coffee")
                    .font(.title)
                HStack {
                    Text("Friedtich Straße 96 IHZ, Berlin")
                    Spacer()
                    Text("Deutchland")
                }
                .font(.callout)
                .foregroundColor(.secondary)
                .padding(0)

                Divider()

                Text("Über diesen Ort:")
                    .font(.title2)
                Text("Kaffeehauskette aus Seattle, bekannt für ihre unverkennbaren Röstungen, leichten Snacks und WLAN-Verfügbarkeit.")
                    .font(.system(.callout))
                
                Divider()
                
                HStack {
                    Button("zu Favoriten hinzufügen", action: emptyExit)
                        .foregroundColor(.white)
                        .buttonStyle(.borderedProminent)
                        .controlSize(.large)
                    Button("Einchecken", action: emptyExit)
                        .foregroundColor(.blue)
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                }
            }
            .padding(14)

            Spacer()
        }
    }
}

func emptyExit () {
    print("Tapped")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
