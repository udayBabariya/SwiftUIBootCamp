//
//  BackgroundMaterealBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 29/12/23.
//

import SwiftUI

struct BackgroundMaterealBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
        }
        .ignoresSafeArea()
        .background(
            Image("mountain")
        )
    }
}

#Preview {
    BackgroundMaterealBootcamp()
}
