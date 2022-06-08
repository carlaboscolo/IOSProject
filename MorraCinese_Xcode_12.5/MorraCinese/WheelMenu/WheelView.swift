//
//  WheelView.swift
//  MorraCinese
//
//  Created by Alessandro Scisci on 07/06/22.
//

import SwiftUI


struct WheelView: View {
    // Circle Radius
    @State var radius : Double = 150
    // Direction of swipe
    @State var direction = Direction.left
    // index of the number at the bottom of the circle
    @State var chosenIndex = 0
    // degree of circle and hue
    @State var degree = 90.0
//    @State var degree = 90.0
    let array : [moveSlice]
    let circleSize : Double

    
    func moveWheel(index : Int) {
        withAnimation(.spring()) {
            if direction == .left {
                degree += Double((360 + (chosenIndex))/array.count)
                if chosenIndex == 0 {
                    chosenIndex = array.count-1
                } else {
                    chosenIndex -= 1
                }
            } else {
                degree -= Double((360 + (chosenIndex))/array.count)
                if chosenIndex == array.count-1 {
                    chosenIndex = 0
                } else {
                    chosenIndex += 1
                }
            }
        }
    }
    
    var body: some View {
        ZStack {
            let anglePerCount = Double.pi * 2.0 / Double(array.count)
            let drag = DragGesture()
                .onEnded { value in
                    if value.startLocation.x > value.location.x + 10 {
                        direction = .left
                    } else if value.startLocation.x < value.location.x - 10 {
                        direction = .right
                    }
                    moveWheel(index: chosenIndex)
                }
            // MARK: WHEEL STACK - BEGINNING
            ZStack {
                Circle().fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .hueRotation(Angle(degrees: degree))

                ForEach(0 ..< array.count) { index in
                    let angle = Double(index) * anglePerCount
                    let xOffset = CGFloat(radius * cos(angle))
                    let yOffset = CGFloat(radius * sin(angle))
                    Text("\(array[index].val)")
                        .rotationEffect(Angle(degrees: -degree))
                        .offset(x: xOffset, y: yOffset )
                        .font(Font.system(chosenIndex == index ? .title : .body, design: .monospaced))
                }
            }
            .rotationEffect(Angle(degrees: degree))
            .gesture(drag)
            .onAppear() {
                radius = circleSize/2 - 30 // 30 is for padding
            }
            // MARK: WHEEL STACK - END
        }
        .frame(width: 200, height: 200)
    }
}


