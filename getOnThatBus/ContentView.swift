//
//  ContentView.swift
//  getOnThatBus
//
//  Created by Aeneas Reynolds on 4/14/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    @State private var currentCount = 0
    var body: some View {
        NavigationStack {
            Text("Hello")
                .multilineTextAlignment(.center)
                .toolbar {
                    NavigationLink(destination: DetailSwiftView()) {
                        Text("my details")
                }
                    Button("Alert") {
                        showingAlert = true
                    }
                    .alert("reset count", isPresented: $showingAlert) {
                        Button("cancel", role: .none) {
                            
                        }
                        Button("Okay", role: .cancel) {
                            print("Okay")
                            currentCount = 0
                        }
                    }
            }
        }
        VStack {
            Text("Get one the bus")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)
                .foregroundColor(CustomColors.myColor)
            Text("\(currentCount)")
            Button("Add a student") {
                currentCount += 1
                let generator = UINotificationFeedbackGenerator()
                generator.notificationOccurred(.success)
            }
            
        }
        
    }
}

struct CustomColors {
    static let myColor = Color("myBlue")
}

//Do not touch otherwise it will crash
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
