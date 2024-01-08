//
//  AnumationUpdatedBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 08/01/24.
//

import SwiftUI

struct AnumationUpdatedBootcamp: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("Action1") {
                    animate1.toggle()
                }
                
                Button("Action2") {
                    animate2.toggle()
                }
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxWidth: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(Color.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
            }
        }
        .animation(.spring)
    }
}

#Preview {
    AnumationUpdatedBootcamp()
}
