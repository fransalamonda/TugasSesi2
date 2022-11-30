//
//  SwiftUILink.swift
//  TugasSesi2
//
//  Created by Frans Sala Monda on 30/11/22.
//

import SwiftUI

struct SwiftUILink: View {
    var body: some View {
        VStack {
            Link("Personal Website", destination: URL(string: "https://fransalamonda.com")!)
                           .foregroundColor(.orange)
                           .font(.title)
                           .fontWeight(.black)
        }
    }
}

struct SwiftUILink_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILink()
    }
}
