//
//  LandmarkDetail.swift
//  landmarks
//
//  Created by frank0 on 2022/4/28.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark : Landmark
    
    var body: some View {
        ScrollView{
            MapView(cooradinate: landmark.locationCoordinate).frame(height:300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.green)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)").font(.subheadline)
                
                Text(landmark.description)
                
                
                
            }.padding()

        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
