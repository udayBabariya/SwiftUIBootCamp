//
//  SafeAreaInsetBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 06/01/24.
//

import SwiftUI

struct SafeAreaInsetBootCamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
//            .overlay(
//            Text("Hi")
//                .frame(maxWidth: .infinity)
//                .background(Color.yellow)
//            , alignment: .bottom
//            )
            .safeAreaInset(edge: .bottom, alignment: .trailing) {
                Text("Hi")
//                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .clipShape(.circle)
                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootCamp()
}
