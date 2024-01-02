//
//  FocusStateBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 02/01/24.
//

import SwiftUI

struct FocusStateBootCamp: View {
    
    
    enum OnboardingFields: Hashable {
        case username
        case password
    }
    
    @State private var username: String = ""
//    @FocusState private var userNameInFocus: Bool
    @State private var password: String = ""
//    @FocusState private var passwordInFocus: Bool
    @FocusState private var fieldInFocus: OnboardingFields?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name...", text: $username)
                .focused($fieldInFocus, equals: .username)
//                .focused($userNameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your Password...", text: $password)
//                .focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button ("Sign UP") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("Sign Up")
                } else if usernameIsValid {
//                    userNameInFocus = false
//                    passwordInFocus = true
                    fieldInFocus = .password
                } else  {
//                    userNameInFocus = true
//                    passwordInFocus = false
                    fieldInFocus = .username
                }
            }
            
//            Button("Toggle Focus State") {
//                userNameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear() {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                self.userNameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateBootCamp()
}
