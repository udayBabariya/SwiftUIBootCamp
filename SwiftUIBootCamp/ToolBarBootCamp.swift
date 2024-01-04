//
//  ToolBarBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 04/01/24.
//

import SwiftUI

struct ToolBarBootCamp: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.indigo.ignoresSafeArea()
                
                Text("Hey 😇")
                    .foregroundStyle(.white)
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
                    Image(systemName: "gear")
                }
            }
        }
        
    }
}

#Preview {
    ToolBarBootCamp()
}
