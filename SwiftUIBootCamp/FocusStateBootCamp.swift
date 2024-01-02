//
//  FocusStateBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 02/01/24.
//

import SwiftUI

struct FocusStateBootCamp: View {
    
    @State private var username: String = ""
    @FocusState private var userNameInFocus: Bool
    
    var body: some View {
        VStack {
            TextField("Add your name...", text: $username)
                .focused($userNameInFocus)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Toggle Focus State") {
                userNameInFocus.toggle()
            }
        }
        .padding(40)
    }
}

#Preview {
    FocusStateBootCamp()
}
