//
//  ToolBarBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 04/01/24.
//

import SwiftUI

struct ToolBarBootCamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("text", text: $text)
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
               
            }
            .navigationTitle("ToolBar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill") ,
//            trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem( placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem( placement: .topBarTrailing) {
                    HStack {
                        Image(systemName: "gear")
                        Image(systemName: "house.fill")
                    }
                }
            }
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen1") {
                    paths.append("screen1")
                }
                
                Button("Screen2") {
                    paths.append("screen2")
                }
                .navigationDestination(for: String.self) { value in
                    Text("new screen \(value)")
                }
            }
        }
        
    }
}

#Preview {
    ToolBarBootCamp()
}
