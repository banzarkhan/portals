//
//  CardView.swift
//  Portals_Ariuna
//
//  Created by Ariuna Banzarkhanova on 01/12/22.
//

import SwiftUI

struct CardView: View {
    @State var modalIsOpen = false
    
    var question: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(
                    Color("appColor")
                        .opacity(0.50)
                )
                .frame(width: 150, height: 210)
                .shadow(radius: 5)
            ZStack (alignment: .top){
                ZStack (alignment: .bottom){
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.white)
                        .frame(width: 120, height: 170)
                    Image(systemName: "camera.fill")
                        .padding()
                }
                Text(question)
                    .multilineTextAlignment(.center)
                    .frame(width: 110)
                    .padding()
                //                    Spacer()
                //                        .fixedSize(horizontal: false, vertical: true)
            }
        }
        .padding()
        .onTapGesture {
            modalIsOpen.toggle()
        }
        .sheet(isPresented: $modalIsOpen){
            CardInfoView()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(question: "Has a cat")
    }
}
