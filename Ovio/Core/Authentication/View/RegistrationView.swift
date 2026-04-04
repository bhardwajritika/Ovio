//
//  RegistrationView.swift
//  Ovio
//
//  Created by Tarun Sharma on 03/04/26.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email : String = ""
    @State private var fullName : String = ""
    @State private var password : String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
            VStack {
                Spacer()
                
                // iconImage
                Image("chatIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                // textFields
                VStack {
                    TextField("Enter your email", text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    TextField("Enter your full Name", text: $fullName)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                
                // SignUp button
                Button {
                    print("Signup button tapped")
                } label: {
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                }
                .padding(.vertical)

                Spacer()
                
                // SignIn link
                Divider()
                
                Button {
                    dismiss()
                } label : {
                    HStack {
                        Text("Already have an account?")
                        
                        Text("Sign In")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .padding(.vertical)
                }
                
            }
        }
}

#Preview {
    RegistrationView()
}
