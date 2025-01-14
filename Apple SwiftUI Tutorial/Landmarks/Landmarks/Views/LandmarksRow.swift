//
//  LandmarksRow.swift
//  Landmarks
//
//  Created by Zikang Xu on 2024-12-27.
//

import SwiftUI

struct LandmarksRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

#Preview {
    LandmarksRow(landmark: landmarks[0])
}
