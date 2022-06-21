//
//  testWheel.swift
//  MorraCinese
//
//  Created by Alessandro Scisci on 07/06/22.
//

import SwiftUI

struct testWheel: View {
    @State var degree = 90.0
    let array : [moveSlice] =  [moveSlice(val: "✋"),
                            moveSlice(val: "✂️"),
                            moveSlice(val: "🗿"),
                            moveSlice(val: "🦎"),
                            moveSlice(val: "🖖")
                            ]

    var body: some View {
        ZStack (alignment: .center){
            if #available(iOS 14.0, *) {
                Color.orange.opacity(0.4).ignoresSafeArea()
                    .hueRotation(Angle(degrees: degree))
            } else {
                // Fallback on earlier versions
            }
            
            WheelView(degree: 90.0, array: array, circleSize: 180)
                .offset(y: 300)
                .shadow(color: .white, radius: 4, x: 0, y: 0)
        }
    }
}

struct testWheel_Previews: PreviewProvider {
    static var previews: some View {
        testWheel()
    }
}
