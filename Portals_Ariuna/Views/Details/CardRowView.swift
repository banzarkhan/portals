//
//  CardRowView.swift
//  Portals_Ariuna
//
//  Created by Ariuna Banzarkhanova on 21/01/23.
//

import SwiftUI

struct CardRowView: View {
    @State var modalOpen = false
    
    var question: String
    
    var body: some View {
        Button {
            
        } label: {
            HStack{
                Text(question)
                Spacer()
                Image(systemName: "person.fill.xmark")
                    .foregroundColor(.black)
            }
            .padding()
            .background(
                Color("appColor")
                    .opacity(0.5)
            )
            .cornerRadius(10)
            .onTapGesture {
                modalOpen.toggle()
            }
            .sheet(isPresented: $modalOpen){
                CardInfoView()
            }
        }
        .foregroundColor(.black)
    }
}

struct CardInListView_Previews: PreviewProvider {
    static var previews: some View {
        CardRowView(question: "Has a cat")
    }
}
