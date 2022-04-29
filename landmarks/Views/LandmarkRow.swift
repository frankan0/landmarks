//
//  LandmarkRow.swift
//  landmarks
//
//  Created by frank0 on 2022/4/29.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark : Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable().frame(width: 50, height: 50)
            
            Text(landmark.name)
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark:landmarks[0])
    }
}
