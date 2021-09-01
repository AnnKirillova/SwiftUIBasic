//
//  Details.swift
//  FirstUIApp
//
//  Created by Ann on 24.08.2021.
//

import SwiftUI

struct Details: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                        .ignoresSafeArea(edges: .top)
                        .frame(height: 300)

            SwiftUIView(image: landmark.image)
                        .offset(y: -130)
                        .padding(.bottom, -130)

                    VStack(alignment: .leading) {
                        Text(landmark.name)
                            .font(.title)
                            .foregroundColor(.primary)

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
