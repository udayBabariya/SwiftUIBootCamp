//
//  NatvePopoverBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 12/01/24.
//

import SwiftUI

struct NatvePopoverBootCamp: View {
    
    @State private var showPopover: Bool = false
    
    var body: some View {
        Button("Click me") {
            showPopover = true
        }
        .padding(20)
        .background(Color.yellow)
        .popover(isPresented: $showPopover, attachmentAnchor: .point(.trailing), arrowEdge: .leading) {
            Text("Hello")
                .presentationCompactAdaptation(.popover)
        }
    }
}

#Preview {
    NatvePopoverBootCamp()
}
