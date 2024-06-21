//
//  CellList.swift
//  H4X0R News
//
//  Created by David Eduardo Batista on 20/06/24.
//

import SwiftUI

struct CellList: View {
    var title: String
    var points: String
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 0.0)
                .fill(.white)
                .frame(height: 80)
                .overlay {
                    HStack {
                        Text(title)
                        Spacer()
                        HStack {
                            Image(systemName: "hand.thumbsup.fill")
                                .foregroundColor(.blue)
                            Text(points)
                        }
                    }
                    .padding()
                }
            
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        CellList(title: "Title", points: "Subtitle")
            .previewLayout(.sizeThatFits)
    }
}


//#Preview {
//    CellList()
//}
