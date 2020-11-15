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
            ScrollView {
                VStack {
                    Card(imageName: "london", textName: "London")
                    Card(imageName: "newyork", textName: "New York")
                    Card(imageName: "paris", textName: "Paris")
                    Card(imageName: "sanfrancisco", textName: "San Francisco")
                    Card(imageName: "washingtondc", textName: "Washington DC")
                    Card(imageName: "rome", textName: "Rome")
                }.padding(.horizontal, 15)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    @State var imageName : String
    @State var textName : String
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    Rectangle().opacity(0.3)
                )
            Text(textName).font(.largeTitle).fontWeight(.bold).foregroundColor(.white)
        }.cornerRadius(20)
    }
}
