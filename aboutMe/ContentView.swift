//
//  ContentView.swift
//  aboutMe
//
//  Created by Scholar on 6/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showMore = false
    var body: some View {
        
        ZStack{
            Color.brown
                .ignoresSafeArea(.all)
            VStack {
                Text("✿ ABOUT ME ✿")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(hue: 0.092, saturation: 0.358, brightness: 0.247))
                Image("blur")
                    .resizable()
                    .frame(width: 300, height: 300)
                Button("LEARN MORE ABOUT TEA!") {
                    showMore = true
                }
                .buttonStyle(.borderedProminent)
                .font(.footnote)
                .fontWeight(.medium)
                .tint(Color(hue: 0.092, saturation: 0.358, brightness: 0.247))
            }
            .padding()
        }
        .sheet(isPresented: $showMore){
            ZStack{
                Color(hue: 0.092, saturation: 0.358, brightness: 0.247)
                    .ignoresSafeArea(.all)
                VStack{
                    Image("nova")
                        .resizable()
                        .frame(width: 160, height: 160)
                    Text("-this is nova-")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                    Button("Like ♡ ") {
                        showMore = true
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.footnote)
                    .fontWeight(.medium)
                    .tint(Color(hue: 0.092, saturation: 0.113, brightness: 0.481))
                    Image("mirror")
                        .resizable()
                        .frame(width: 180, height: 180)
                    Text("-this is me and my favorite human being-")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                    Button("Like ♡ ") {
                        showMore = true
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.footnote)
                    .fontWeight(.medium)
                    .tint(Color(hue: 0.092, saturation: 0.113, brightness: 0.481))
                    Image("Erin")
                        .resizable()
                        .frame(width: 165, height: 160)
                    Text("-this is one of my digital drawings-")
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                    Button("Like ♡ ") {
                        showMore = true
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.footnote)
                    .fontWeight(.medium)
                    .tint(Color(hue: 0.092, saturation: 0.113, brightness: 0.481))
                }
                }
            }
        }
    } // end BODY
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
