//
//  ResizableSheetsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 05/01/24.
//

import SwiftUI

struct ResizableSheetsBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            myNextView(detents: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.1), .medium, .large])
                
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled( )
        }
//        .onAppear() {
////            showSheet = true
//        }
    }
}

struct myNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack(spacing: 20) {
                
                Button("20%") {
                    detents = .fraction(0.2)
                }
                
                Button("Medium") {
                    detents = .medium
                }
                
                Button("60%") {
                    detents = .fraction(0.6)
                }
                
                Button("Large") {
                    detents = .large
                }
            }
            .presentationDetents([.medium, .large, .fraction(0.2), .fraction(0.6)], selection: $detents)
        }
    }
}

#Preview {
    ResizableSheetsBootcamp()
}
