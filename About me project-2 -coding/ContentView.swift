//
//  ContentView.swift
//  About me project-2 -coding
//
//  Created by KWOK LAM on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text1 = "KaYin Lam"
    @State private var image2 = "1"
    @State private var showNewText = false
    @State private var showButton = true
    @State private var rotateImage=false
    
    private let atext="KaYin Lam"
    private let aimage="1"
    private let ashowNewText = false
    private let ashowButton = true
    private let arotateImage = false
    
    var body: some View {
        ZStack {
            Color(red:255/255, green:255/255, blue:234/255)
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                Text(text1)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor( Color(red: 157/255, green:140/255, blue: 188/255))
                    .multilineTextAlignment(.center)
                    Spacer()
                Spacer()
                Image(image2)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .background(Color(red: 157/255, green:140/255, blue: 188/255))
                    .cornerRadius(5.0)
                    .rotationEffect(Angle.degrees(rotateImage ? 90:0))
                    .padding()
                    
                Spacer()
                if showButton{
                Button("More about me >_<") {
                    text1=("Food that I like!!")
                    image2=("2")
                    showNewText=true
                    showButton=false
                    rotateImage=true
                }
                .buttonStyle(.borderedProminent)
                .tint(Color(red: 157/255, green:140/255, blue: 188/255))
                .cornerRadius(5.0)

                }
                if showNewText{
                    Text("Spicy and tasty!!!>~<")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor( Color(red: 157/255, green:140/255, blue: 188/255))
                    .multilineTextAlignment(.center)
                    Spacer()
            }
                Spacer()
                if !showButton{
                    Button("Go Back <-"){
                        text1=atext
                        image2=aimage
                        showNewText=ashowNewText
                        showButton=ashowButton
                        rotateImage=arotateImage
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color(red: 157/255, green:140/255, blue: 188/255))
                    .cornerRadius(5.0)
                    Spacer()
                }
            }
            }
        }
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
