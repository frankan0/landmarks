//
//  CategoryHome.swift
//  landmarks
//
//  Created by frank0 on 2022/7/11.
//

import SwiftUI

struct CategoryHome: View {
    
    
    @EnvironmentObject var modeldata: ModelData
    
    @State private var showingProfile = false
    
    var body: some View {
        NavigationView {
            List {
                modeldata.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height:200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modeldata.categories.keys.sorted(),id: \.self ) { key in
                    CategoryRow(categoryName: key, items: modeldata.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
                .navigationTitle("Featured")
                .toolbar {
                    Button {
                        showingProfile.toggle()
                    } label: {
                        Label("User Profiles ",systemImage: "person.crop.circle")
                    }
                }
                .sheet(isPresented: $showingProfile) {
                    ProfileHost()
                        .environmentObject(modeldata)
                }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
