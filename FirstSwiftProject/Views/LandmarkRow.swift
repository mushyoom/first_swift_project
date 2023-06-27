//
//  LandmarkRow.swift
//  FirstSwiftProject
//
//  Created by Shyann on 2023/06/26.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack{
            landmark.image.resizable().frame(width: 50,height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill").foregroundColor(.green)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
