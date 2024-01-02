//
//  BadgeBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 02/01/24.
//

import SwiftUI


//List
//TabView


struct BadgeBootCamp: View {
    var body: some View {
        
        List {
            Text("Hello World")
                .badge("New Item")
          
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
                .badge(2)
            Text("Hello World")
        }
        
        
        //        TabView {
        //            Color.red
        //                .tabItem {
        //                    Image(systemName: "heart.fill")
        //                    Text("Hello")
        //                }
        //                .badge(5)
        //
        //            Color.green
        //                .tabItem {
        //                    Image(systemName: "heart.fill")
        //                    Text("Hello")
        //                }
        //                .badge("new")
        //
        //            Color.blue
        //                .tabItem {
        //                    Image(systemName: "heart.fill")
        //                    Text("Hello")
        //                }
        //                .badge(0)
        //        }
    }
    
}

#Preview {
    BadgeBootCamp()
}
