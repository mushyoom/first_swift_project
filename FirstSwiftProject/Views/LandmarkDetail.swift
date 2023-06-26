//
//  LandmarkDetail.swift
//  FirstSwiftProject
//
//  Created by Shyann on 2023/06/26.
//

import SwiftUI

struct LandmarkDetail: View {
    @State var outputText:String = "Simon Game"
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
            
            CircleImage(image: landmark.image).offset(y: -120).padding(.bottom, -120)
            VStack(alignment:.leading){
                Text(landmark.name).font(.title)
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
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
