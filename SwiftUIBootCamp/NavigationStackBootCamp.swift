//
//  NavigationStackBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 03/01/24.
//

import SwiftUI

struct NavigationStackBootCamp: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 40) {
                    ForEach(0..<10) { x in
                        
                        
                        NavigationLink(value: x) {
                            Text("Lazy Click me: \(x)")
                        }
                        
//                        NavigationLink(destination: {
//                           mySecondScreen(value: x)
//                        }, label: {
//                            Text("Click me : \(x)")
//                        })
                    }
                }
            }
            .navigationTitle("Nav BootCamp")
            .navigationDestination(for: Int.self) { value in
                mySecondScreen(value: value)
            }
        }
    }
}

struct mySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("Init Screen: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackBootCamp()
}
