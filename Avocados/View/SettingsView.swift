//
//  SettingsView.swift
//  Avocados
//
//  Created by Ghenadie Isacenco on 28/10/2025.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES

    @State private var enableNotifications: Bool = true
    @State private var backgroundRefresh: Bool = false

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                // MARK: - SECTION #1
                
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotifications) {
                        Text("Enable notifications")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }
                }
                
                // MARK: - SECTION #2
                Section(header: Text("Application")) {
                    if enableNotifications {
                        HStack {
                            Text("Product")
                                .foregroundColor(.gray)
                            Spacer()
                            
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(.gray)
                            Spacer()
                            
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer")
                                .foregroundColor(.gray)
                            Spacer()
                            
                            Text("Ghenadie Isacenco")
                        }
                        HStack {
                            Text("Designer")
                                .foregroundColor(.gray)
                            Spacer()
                            
                            Text("Robert Petras")
                        }
                        HStack {
                            Text("Website")
                                .foregroundColor(.gray)
                            Spacer()
                            
                            Text("swiftuimasterclass.com")
                        }
                        HStack {
                            Text("Version")
                                .foregroundColor(.gray)
                            Spacer()
                            
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal Message")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("👍Happy Coding!")
                        }
                    }
                    
                }
                
            }
        }
        .frame(maxWidth: 640)
        
    }
}

#Preview {
    SettingsView()
}
