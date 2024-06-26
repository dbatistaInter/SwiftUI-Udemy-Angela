//
//  ContentView.swift
//  H4X0R News
//
//  Created by David Eduardo Batista on 20/06/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.post){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    CellList(title: post.title, points: String(post.points))
                }
                
            }
            .navigationTitle("H4X0R News")
        }
        .onAppear() {
            self.networkManager.fetchData()
        }
    }
}


#Preview {
    ContentView()
}


