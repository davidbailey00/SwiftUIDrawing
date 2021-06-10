//
//  ContentView.swift
//  Drawing
//
//  Created by David Bailey on 09/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Capsule()
            .strokeBorder(
                ImagePaint(image: Image("Example"), scale: 0.0125),
                lineWidth: 20
            )
            .frame(width: 300, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
