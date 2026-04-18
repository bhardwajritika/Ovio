//
//  InboxRowView.swift
//  Ovio
//
//  Created by Tarun Sharma on 04/04/26.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            // Image
            CircularProfileImageView(user: User.MOCK_USER, size: .medium)
            
            VStack (alignment: .leading, spacing: 4){
                // Person name
                Text(User.MOCK_USER.fullName)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                // Last message
                Text("Hi, how are you?")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(width: 200, alignment: .leading)
            }
            HStack {
                // last active
                Text("Yesterday")
                
                // arrow to open chat
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundStyle(.gray)
        }
        .frame(height: 72)
    }
}

#Preview {
    InboxRowView()
}
