//
//  DetailView.swift
//  HackerNewsSwiftUI
//
//  Created by Shankar's Mac on 25/04/2021.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url:String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DetailView(url: "https://www.google.com")
            DetailView(url: "https://www.google.com")
        }
    }
}


