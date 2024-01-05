//
//  ResizableSheetsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 05/01/24.
//

import SwiftUI

struct ResizableSheetsBootcamp: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            myNextView()
                .presentationDetents([.medium])
        }
    }
}

struct myNextView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
        }
//        Text("Hello World!!!")
    }
}

#Preview {
    ResizableSheetsBootcamp()
}
