//
//  SubmitTextFieldBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 03/01/24.
//

import SwiftUI

struct SubmitTextFieldBootCamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("text", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("keyboard route bttton action")
                }
            TextField("text", text: $text)
                .submitLabel(.done)
                .onSubmit {
                    print("keyboard done bttton action")
                }
            TextField("text", text: $text)
                .submitLabel(.go)
                .onSubmit {
                    print("keyboard go bttton action")
                }
        }
    }
}

#Preview {
    SubmitTextFieldBootCamp()
}
