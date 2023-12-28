//
//  AsyncImageBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 28/12/23.
//

import SwiftUI

struct AsyncImageBootCamp: View {
    
    let url = URL(string: "https://picsum.photos/350")
    
    var body: some View {
        AsyncImage(url: url)
    }
}

#Preview {
    AsyncImageBootCamp()
}
