//
//  ComponentButton.swift
//  TugasSesi2
//
//  Created by Frans Sala Monda on 25/11/22.
//

import SwiftUI

struct ComponentButton: View {
    var body: some View {
        VStack {
            Button {
                print("Button")
            } label: {
                Text("Hello Ios Dev")
                    .background(.purple)
                    .foregroundColor(.white)
                    .padding()
            }
            
            Button {
                
            } label: {
                Text("hello awesome developer")
                                    .foregroundColor(.purple)
                                    .font(.title)
                                    .padding()
                                    .border(.purple, width: 5)
            }
            
            Button {} label: {
                Text("Hello cool developer")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(.purple)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(10)
                    .overlay{
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(.purple, lineWidth: 5)
                    }
            }
            
        }//vstack

    }
}

struct ComponentButton_Previews: PreviewProvider {
    static var previews: some View {
        ComponentButton()
    }
}
