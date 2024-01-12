//
//  NatvePopoverBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 12/01/24.
//

import SwiftUI

struct NatvePopoverBootCamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Good",
        "Average",
        "Bad"]
    
    var body: some View {
        Button("Click me") {
            showPopover = true
        }
        .padding(20)
        .background(Color.yellow)
        .popover(isPresented: $showPopover, attachmentAnchor: .point(.trailing), arrowEdge: .leading) {
            VStack{
                ForEach(feedbackOptions, id: \.self) { option in
                    Button(option) {
                        
                    }
                    
                    if option != feedbackOptions.last {
                        Divider()
                    }
                }
            }
            .padding(20)
                .presentationCompactAdaptation(.popover)
        }
    }
}

#Preview {
    NatvePopoverBootCamp()
}
