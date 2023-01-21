//
//  ContentView.swift
//  Portals_Ariuna
//
//  Created by Ariuna Banzarkhanova on 01/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var isGridView = true
    
    var body: some View {
        NavigationStack{
            ScrollView{
                if isGridView {
                    VStack{
                        HStack{
                            CardView(question: "Has a cat")
                            CardView(question: "Plays music")
                        }
                        HStack{
                            CardView(question: "Likes dogs")
                            CardView(question: "Plays basketball")
                        }
                        HStack{
                            CardView(question: "Hates oranges and onion")
                            CardView(question: "Plays Dota")
                        }
                    }
                } else {
                    CardsListView()
                }
            }
            .navigationTitle("find them all!")
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(Color("appColor"), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        isGridView.toggle()
                    } label: {
                        Label("Card view", systemImage: isGridView ? "list.dash": "rectangle.grid.2x2")
                            .labelStyle(.iconOnly)
                            .fontWeight(.semibold)
                    }
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
