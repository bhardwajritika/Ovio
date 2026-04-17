//
//  ProfileView.swift
//  Ovio
//
//  Created by Tarun Sharma on 16/04/26.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        VStack {
            // header
            VStack {
                PhotosPicker(selection: $viewModel.selectedItem) {
                    if let profileImage = viewModel.profileImage {
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                    } else {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(Color(.systemGray4))
                    }
                    
                }
                
                Text("Bruuce Wayne")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            // list
            List {
                Section {
                    ForEach(SettingsOptionViewModel.allCases, id: \.self) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.imageBackgroundColor)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                
                
                Section {
                    Button ("Log Out") {
                        
                    }
                    
                    Button ("Delete Account") {
                        
                    }
                }
                .foregroundColor(.red)
            }
        }
        
    }
}

#Preview {
    ProfileView()
}
