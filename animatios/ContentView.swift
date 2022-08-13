//
//  ContentView.swift
//  animatios
//
//  Created by Roro Solutions on 11/08/22.
//
import SwiftUI
struct ContentView: View {
    @State private var dragAmount = CGSize.zero
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
//lecture-5

//struct ContentView: View {
//    @State private var enabled = false
//    var body: some View {
//        Button("Tap Me") {
//            enabled.toggle()
//        }
//
////        .frame(width: 200, height: 200)
////        .background(enabled ? .blue : .red)
////        .foregroundColor(.white)
////        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
////        .animation(.default, value: enabled)
//
////        .frame(width: 200, height: 200)
////        .background(enabled ? .blue : .red)
////        .animation(.default, value: enabled)
////        .foregroundColor(.white)
////        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
////        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
//
////        .frame(width: 200, height: 200)
////        .background(enabled ? .blue : .red)
////        .animation(nil, value: enabled) // you can disable abimaruin by passing nil
////        .foregroundColor(.white)
////        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
////        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
//    }
//}


//lecture-4-explicit animation

//struct ContentView: View {
//    @State private var animationAmount = 0.0
//    var body: some View {
//        Button("Tap Me") {
////            withAnimation {
////                animationAmount += 360
////            }
//            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
//                animationAmount += 360
//            }
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
//    }
//}


//lecture-3-animation() binding

//struct ContentView: View {
//    @State private var animationAmount = 1.0
//
//    var body: some View {
//        print(animationAmount)
//// tip when you something non-view in view then you need to add return to view like here we added to vstack because of orint statement in line first of view
//           return VStack {
//               Stepper("Scale amount", value: $animationAmount.animation(
//                   .easeInOut(duration: 1)
//                       .repeatCount(3, autoreverses: true)
//               ), in: 1...10)
//
//            Spacer()
//
//            Button("Tap Me") {
//                animationAmount += 1
//            }
//            .padding(40)
//            .background(.red)
//            .foregroundColor(.white)
//            .clipShape(Circle())
//            .scaleEffect(animationAmount)
//        }
//    }
//}

// leture -1&2- implicit animation

//struct ContentView: View {
//    @State private var animationAmount = 1.0
//    var body: some View {
//        Button("Tap Me") {
//            //
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .scaleEffect(animationAmount)
//        .animation(.default, value: animationAmount) // implicit animation
//
//        //.animation(.easeOut, value: animationAmount)
//
//        //.animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animationAmount)
//
//        .animation(.easeInOut(duration: 2), value: animationAmount) // give time duration to complete animatin
//
//        .animation(
//            .easeInOut(duration: 2)
//                .delay(1),
//            value: animationAmount
//        ) // this wait for 1 sec thereafter animation start
//
//        .animation(
//            .easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true),
//            value: animationAmount
//        ) // this will also reverse and repat animation like pop-up with value of repeat count
//
//        .animation(
//            .easeInOut(duration: 1)
//                .repeatForever(autoreverses: true),
//            value: animationAmount
//        ) // this will also reverse and repat animation like pop-up forever
//        .onAppear {
//            animationAmount = 2
//        }
//        .overlay(
//            Rectangle()
//                .stroke(.red)
//                .scaleEffect(animationAmount)
//                .opacity(2 - animationAmount)
//                .animation(
//                .easeOut(duration: 1)
//                    .repeatForever(autoreverses: false),
//                value: animationAmount
//            )
//        ) // this animation is not circle this animation is on boarder or stroke which may be circle
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
