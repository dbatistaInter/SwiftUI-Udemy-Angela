//
//  ContentView.swift
//  EduardoCard
//
//  Created by David Eduardo Batista on 20/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color(red: 0.20, green: 0.60, blue: 0.86, opacity: 1.0)
                .ignoresSafeArea()
            VStack {
                Image("Eduardo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 210)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 5).shadow(radius: 10)
                    }
                Text("Eduardo Batista")
                    .font(.custom("Pacifico-Regular", size: 40.00))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(textContact: "+52 12345678", systemName: "phone.fill",colorIcon: .green)
                Divider()
                InfoView(textContact: "eduardo@email.com", systemName: "envelope.fill",colorIcon: .red)
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}

