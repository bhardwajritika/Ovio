//
//  ChatView.swift
//  Ovio
//
//  Created by Tarun Sharma on 18/04/26.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    
    
    var body: some View {
        VStack {
            ScrollView {
                // header
                VStack {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
                    
                    VStack (spacing: 4){
                        Text(User.MOCK_USER.fullName)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("Messenger")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
                
                // messages
                ForEach(0 ... 15, id: \.self) { message in 
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                }
                
            }
            
            // message input view
            Spacer()
            
            ZStack (alignment: .trailing){
                TextField("Message...", text: $messageText, axis: .vertical )
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                
                Button {
                    print("Send message")
                } label: {
                    Text("Send")
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ChatView()
}
