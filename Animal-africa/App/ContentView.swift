//
//  ContentView.swift
//  Animal-africa
//
//  Created by Drillmaps India on 10/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //MARK: - PROPERTIES
        
        let animals : [Animals] = Bundle.main.decode("animals.json")
        //MARK: - BODY
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
            }//:LIST
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
