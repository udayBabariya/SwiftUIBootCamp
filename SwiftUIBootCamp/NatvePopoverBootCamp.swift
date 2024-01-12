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
        .popover(isPresented: $showPopover, content: {
            Text("Hello")
                .presentationCompactAdaptation(.popover)
        })
    }
}

#Preview {
    NatvePopoverBootCamp()
}
