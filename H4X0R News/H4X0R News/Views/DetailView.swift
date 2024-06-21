//
//  DetailsView.swift
//  H4X0R News
//
//  Created by David Eduardo Batista on 20/06/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    var url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
