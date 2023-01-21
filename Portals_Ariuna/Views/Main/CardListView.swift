//
//  CardListView.swift
//  Portals_Ariuna
//
//  Created by Ariuna Banzarkhanova on 21/01/23.
//

import SwiftUI

struct CardsListView: View {
    var body: some View {
        VStack {
            CardRowView(question: "Has a cat")
            CardRowView(question: "Plays music")
            CardRowView(question: "Likes dogs")
            CardRowView(question: "Plays basketball")
            CardRowView(question: "Hates oranges and onion")
            CardRowView(question: "Plays Dota")
        }
        .padding()
    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardsListView()
    }
}
