//
//  StartPageView.swift
//  Portals_Ariuna
//
//  Created by Ariuna Banzarkhanova on 01/12/22.
//

import SwiftUI

struct StartPageView: View {
    var body: some View {
        VStack{
            AppNameView()
                .foregroundColor(.black)
            ButtonRecView(buttonName: "new game")
            ButtonRecView(buttonName: "load game")
            ButtonRecView(buttonName: "cards")
        }
    }
}

struct StartPageView_Previews: PreviewProvider {
    static var previews: some View {
        StartPageView()
    }
}

struct AppNameView: View {
    var body: some View {
        VStack{
            Image("Icon")
                .resizable()
                .frame(width: 75.0, height: 75.0)
            HStack (spacing: 0){
                Text("p")
                Text("o")
                    .foregroundColor(Color("appColor"))
                Text("rtals.")
            }
            .font(.largeTitle)
            .fontWeight(.semibold)
            .tracking(/*@START_MENU_TOKEN@*/2.0/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

struct ButtonRecView: View {
    var buttonName: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 170.0, height: 54.0)
                .foregroundColor(Color("appColor"))
                .padding()
            Text(buttonName)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
    }
}
