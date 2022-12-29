//
//  MainView.swift
//  Animal-africa
//
//  Created by Drillmaps India on 10/10/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Image(systemName:"square.grid.2x2")
                    Text("Browse")
                }
            VideoListView()
                .tabItem{
                    Image(systemName:"play.rectangle")
                    Text("Watch")
                }
            MapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("Locations")
                }
            GalleryView()
                .tabItem{
                    Image(systemName:"photo")
                    Text("Gallery")
                }
        }//:TAB_VIEW
        .padding(.all,-21.0)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
//            .padding(.all, -21.0)

            .previewDevice("iPhone 14 Pro Max")
    }
}
