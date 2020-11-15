//
//  ContentView.swift
//  citiesFeed
//
//  Created by Rosalie on 11/14/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Cities Feed")
                .font(.largeTitle)
                .fontWeight(.bold)
            ZStack {
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay(
                        Rectangle().opacity(0.2)
                    )
                Text("London").font(.largeTitle).fontWeight(.bold).foregroundColor(.white)
            }.cornerRadius(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
