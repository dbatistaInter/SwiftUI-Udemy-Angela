//
//  InfoView.swift
//  EduardoCard
//
//  Created by David Eduardo Batista on 20/06/24.
//

import SwiftUI

struct InfoView: View {
    var textContact: String
    var systemName: String = ""
    var colorIcon: Color = .black
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(.white)
            .frame(height: 45)
            .overlay {
                HStack {
                    Image(systemName: systemName)
                        .foregroundColor(colorIcon)
                    Text(textContact)
                }
            }
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(textContact: "Hello World", systemName: "globe.desk")
            .previewLayout(.sizeThatFits)
    }
}


//#Preview {
//
//}
