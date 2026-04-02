//
//  LoginView.swift
//  Ovio
//
//  Created by Tarun Sharma on 31/03/26.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                // Icon Image
                Image("chatIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                // Text fields
                VStack {
                    TextField("Enter your email", text: $email)
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
                
                // Forgot_password
                Button {
                    print("forgot password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)

                
                // login button
                Button {
                    print("Login button")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                }
                .padding(.vertical)

                
                // facebook login
                HStack {
                    Rectangle()
                        .frame(height: 0.5)
                        .frame(maxWidth: .infinity)
                        .padding(.leading, 20)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(height: 0.5)
                        .frame(maxWidth: .infinity)
                        .padding(.trailing, 20)
                }
                .foregroundStyle(.secondary)
                
                HStack {
                    Image("facebookIcon")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                Text("Continue with facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.top, 8)
                }
                
                Spacer()
                
                // signUp link
                
                Divider()
                
                NavigationLink{
                    Text("Sign Up View")
                } label: {
                    HStack{
                        Text("Don't have an account")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
            }
        }
    }
}

#Preview {
    LoginView()
}
