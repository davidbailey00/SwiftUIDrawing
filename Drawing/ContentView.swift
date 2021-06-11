//
//  ContentView.swift
//  Drawing
//
//  Created by David Bailey on 09/06/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = CGFloat.zero

    var body: some View {
        VStack {
            ZStack {
            Circle()
                .fill(Color.red)
                .frame(width: 200 * amount)
                .offset(x: -50, y: -80)
                .blendMode(.screen)

            Circle()
                .fill(Color.green)
                .frame(width: 200 * amount)
                .offset(x: 50, y: -80)
                .blendMode(.screen)

            Circle()
                .fill(Color.blue)
                .frame(width: 200 * amount)
                .blendMode(.screen)
            }
            .frame(width: 300, height: 300)

            Slider(value: $amount)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
