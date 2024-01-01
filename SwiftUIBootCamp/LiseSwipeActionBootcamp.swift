//
//  LiseSwipeActionBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 01/01/24.
//

import SwiftUI

struct LiseSwipeActionBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "mango", "banana"
    ]
    
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
            }
//            .onDelete(perform: delete)
            .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                Button("archive") {
                    
                }
                .tint(.green)
                
                Button("Save") {
                    
                }
                .tint(.blue)
                
                Button("junk") {
                    
                }
                .tint(.black)
                
            }
            .swipeActions(edge: .leading, allowsFullSwipe: false) {
                Button("share") {
                    
                }
                .tint(.yellow)
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    LiseSwipeActionBootcamp()
}
