//
//  ContentView.swift
//  HackerNewsSwiftUI
//
//  Created by Shankar's Mac on 25/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkmanager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkmanager.posts) {
                post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                        
                    }
                }
            }
            .navigationTitle("H4XOR News")
        }
        .onAppear {
            self.networkmanager.fetchDate()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
