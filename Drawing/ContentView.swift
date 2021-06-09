//
//  ContentView.swift
//  Drawing
//
//  Created by David Bailey on 09/06/2021.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

        return path
    }
}

struct Arc: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool

    func path(in rect: CGRect) -> Path {
        let adjustment = Angle.degrees(90)

        var path = Path()
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.midY),
            radius: rect.width / 2,
            startAngle: startAngle - adjustment,
            endAngle: endAngle - adjustment,
            clockwise: !clockwise
        )

        return path
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 50) {
            Triangle()
                .stroke(
                    Color.red,
                    style: StrokeStyle(
                        lineWidth: 10, lineCap: .round, lineJoin: .round
                    )
                )
                .frame(width: 150, height: 150)

            Arc(
                startAngle: .degrees(0),
                endAngle: .degrees(110),
                clockwise: true
            )
            .stroke(Color.blue, lineWidth: 10)
            .frame(width: 150, height: 150)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
