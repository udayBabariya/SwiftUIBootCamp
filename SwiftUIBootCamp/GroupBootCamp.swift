//
//  GroupBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 06/01/24.
//

import SwiftUI

struct GroupBootCamp: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("hello World!!!")
            Group {
                Text("hello World!!!")
                Text("hello World!!!")
            }
            .font(.caption)
            .foregroundStyle(.green)
        }
        .foregroundStyle(Color.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootCamp()
}
