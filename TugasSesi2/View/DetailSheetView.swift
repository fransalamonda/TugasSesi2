//
//  DetailSheetView.swift
//  TugasSesi2
//
//  Created by Frans Sala Monda on 26/11/22.
//

import SwiftUI

struct DetailSheetView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                CategoryItemView(title: "Walk", icon: "figure.walk.motion", color: .green, bgcolor: .purple)
                
                CategoryItemView(title: "Food", icon: "fork.knife.circle.fill", color: .orange, bgcolor: .purple)
                
                CategoryItemView(title: "Stay", icon: "house.fill", color: .blue, bgcolor: .purple)
                
                CategoryItemView(title: "Ride", icon: "sailboat.fill", color: .indigo, bgcolor: .yellow)
                
                CategoryItemView(title: "Walk", icon: "figure.walk.motion", color: .green, bgcolor: .purple)
                
                
            }//hstack
        }
    }
}

struct DetailSheetView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSheetView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

struct CategoryItemView: View {
    var title: String
    var icon: String
    var color: Color
    var bgcolor : Color
    
    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .center, spacing: 8) {
                Image(systemName: icon)
                    .symbolRenderingMode(.multicolor)
                    .font(.system(size: 24))
                    .foregroundColor(color)
                Text(title)
                    .foregroundColor(.white)
            }
        }//hstack
        .frame(width: 50, height: 50)
        .padding()
        .background(bgcolor)
        .cornerRadius(60)
    }
}
