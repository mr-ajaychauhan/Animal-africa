//
//  AnimalListItemView.swift
//  Animal-africa
//
//  Created by Drillmaps India on 11/10/22.
//

import SwiftUI

struct AnimalListItemView: View {
    //MARK: - PROPERTY
    
    let animal:Animals
    
    //MARK: - BODY
    var body: some View {
        HStack (alignment: .center, spacing: 16){
            
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90,height: 90)
                .clipShape(
                RoundedRectangle(cornerRadius: 12)
                )
            VStack (alignment: .leading ,spacing: 8){
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
            }
            
        }//:HSTACK
        .padding(.bottom,5)
        
    }
}
//MARK: - PREVIEW
struct AnimalListItemView_Previews: PreviewProvider {
    static var animals: [Animals] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding(.bottom, 2.0)
    }
}
