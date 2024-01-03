//
//  CardFlipAnimation.swift
//  SwiftUIBootCamp
//
//  Created by Uday on 02/01/24.
//

import SwiftUI

struct CardFlipAnimation: View {
//    struct AdvancedCardFlipAnimation: View {
        @State private var isFlipped: Bool = false

        var body: some View {
            ZStack {
                // Back Card
                CardView(isFlipped: $isFlipped)

                // Front Card
                CardView(isFlipped: $isFlipped)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
            }
            .frame(width: 200, height: 300)
            .rotation3DEffect(
                .degrees(isFlipped ? 180 : 0),
                axis: (x: 0.0, y: 1.0, z: 0.0),
                anchor: .center,
                perspective: 0.5
            )
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1.0)) {
                    self.isFlipped.toggle()
                }
            }
        }
    }

    struct CardView: View {
        @Binding var isFlipped: Bool

        var body: some View {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.blue)
                .frame(width: 200, height: 300)
                .overlay(
                    Text(isFlipped ? "Back" : "Front")
                        .foregroundColor(.white)
                        .font(.headline)
                )
                .shadow(radius: 10)
        }
    }


#Preview {
    CardFlipAnimation()
}

#Preview {
    AdvancedAnimation()
}



struct AdvancedAnimation: View {
    @State private var rotation: Double = 0.0
    @State private var pulsate: Bool = false

    var body: some View {
        VStack {
            Spacer()

            ZStack {
                CubeView()
                    .rotation3DEffect(
                        .degrees(rotation),
                        axis: (x: 1.0, y: 1.0, z: 0.0)
                    )
                    .scaleEffect(pulsate ? 1.2 : 1.0)
                    .animation(
                        Animation.easeInOut(duration: 2.0)
                            .repeatForever(autoreverses: true)
                    )
            }
            .onAppear() {
                withAnimation(.easeInOut(duration: 1.5).repeatForever()) {
                    self.rotation = 360
                }

                withAnimation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                    self.pulsate.toggle()
                }
            }
            .frame(width: 200, height: 200)

            Spacer()
        }
    }
}

struct CubeView: View {
    var body: some View {
        VStack {
            Spacer()

            HStack {
                Spacer()
                CubeFaceView(color: .red)
                Spacer()
            }

            HStack {
                CubeFaceView(color: .green)
                    .rotation3DEffect(
                        .degrees(90),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
                Spacer()
                CubeFaceView(color: .blue)
                    .rotation3DEffect(
                        .degrees(-90),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                    )
            }

            HStack {
                Spacer()
                CubeFaceView(color: .yellow)
                Spacer()
            }

            Spacer()
        }
    }
}

struct CubeFaceView: View {
    var color: Color

    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .frame(width: 50, height: 50)
    }
}
