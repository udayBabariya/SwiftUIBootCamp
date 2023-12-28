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
        //        AsyncImage(url: url)
        VStack(spacing: 50) {
            AsyncImage(url: url) { downloadedImage in
                downloadedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            } placeholder: {
                ProgressView()
            }
        }
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty :
                ProgressView()
            case .success(let downloadedImage):
                downloadedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
    }
}

#Preview {
    AsyncImageBootCamp()
}
