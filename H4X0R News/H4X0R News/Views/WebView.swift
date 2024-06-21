//
//  WebView.swift
//  H4X0R News
//
//  Created by David Eduardo Batista on 20/06/24.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                uiView.load(URLRequest(url: url))
            }
        }
    }
    
}
