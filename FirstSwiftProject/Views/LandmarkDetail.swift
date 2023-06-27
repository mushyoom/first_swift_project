//
//  LandmarkDetail.swift
//  FirstSwiftProject
//
//  Created by Shyann on 2023/06/26.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
            modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
            
            CircleImage(image: landmark.image).offset(y: -120).padding(.bottom, -120)
            VStack(alignment:.leading){
                HStack {
                    Text(landmark.name).font(.title)
                    Spacer()
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack{
                    Text(landmark.park).font(.subheadline)
                    Spacer()
                    Text(landmark.state).font(.subheadline).foregroundColor(.secondary)
                }
                
                Divider()
                
                Spacer()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)}.padding()
        }
            
           
        
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0]).environmentObject(modelData)
    }
}
