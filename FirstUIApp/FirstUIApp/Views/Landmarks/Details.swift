//
//  Details.swift
//  FirstUIApp
//
//  Created by Ann on 24.08.2021.
//

import SwiftUI

struct Details: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int{
        modelData.landmarks.firstIndex { landM in
           return landM.id == landmark.id
        }!
    }
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                        .ignoresSafeArea(edges: .top)
                        .frame(height: 300)

            CircleImage(image: landmark.image)
                        .offset(y: -130)
                        .padding(.bottom, -130)

                    VStack(alignment: .leading) {
                        HStack {
                            Text(landmark.name)
                                .font(.title)
                                .foregroundColor(.primary)
                            FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                        }

                        HStack {
                            Text(landmark.park)
                            Spacer()
                            Text(landmark.state)
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                        Divider()

                        Text("About \(landmark.name)")
                            .font(.title2)
                        Text(landmark.description)
                    }
                    .padding()
        }
        .navigationTitle(landmark.name)
                .navigationBarTitleDisplayMode(.inline)
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details(landmark: ModelData().landmarks[0])
    }
}
