//
//  ContentView.swift
//  BekzodCard
//
//  Created by Bekzod Khaitboev on 3/23/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Bekzod")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Bekzod Kh")
                    .font(Font.custom("Pasifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("Ios Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+998935868089", imageName: "phone.fill")
                InfoView(text: "bekhzod.khaitboev@gmail.com", imageName: "envelope.fill")
               
                Link(destination: URL(string: "https://www.linkedin.com/in/bekzod-khaitboev-41749820a/")!, label: {
                    HStack(alignment: .center, spacing:20) {
                        Text("Linkedin")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                        Image(systemName: "arrow.right.circle")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                })
                
                
            }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
