//
//  AppStorageBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 26/12/23.
//

import SwiftUI

struct AppStorageBootCamp: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "add name here")
            
            if let name = currentUserName {
                Text(name)
            }
            Button("Save".uppercased()) {
                let name = "Uday1"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
        
    }
}

#Preview {
    AppStorageBootCamp()
}
