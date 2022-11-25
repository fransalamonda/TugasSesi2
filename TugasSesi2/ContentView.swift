//
//  ContentView.swift
//  TugasSesi2
//
//  Created by Frans Sala Monda on 23/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("go-to-beach")
                .resizable()
                .overlay {
                    Color.black
                    .opacity(0.6)
                }
                .ignoresSafeArea()
            
            VStack {
                HStack(spacing: 100) {
                    
                    PricingView( textColor: .white, bgColor: .clear, icon: "cloud.sun.fill")

                    ZStack {
                        Text("Travel")
                            .font(.system(.caption, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(5)
                    }
                    
                    ZStack {
                        
                        PricingView(textColor: .white, bgColor: .clear, icon: "cart.badge.plus")
                           
                    }//: ZSTACK
                    
                }
                headerView
                .foregroundColor(.white)
                
                
                Spacer()
            }//: VSTACK
            
            .padding(.horizontal)
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK: - PRICING VIEW
struct PricingView: View {
    
    var textColor: Color
    var bgColor: Color
    var icon: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                //.font(.largeTitle)
                .foregroundColor(textColor)
        
            
        } //: VSTACK
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding(2)
        .background(bgColor)
        .cornerRadius(0)
    }
}
// MARK: - EXTENSION
extension ContentView {
    private var headerView: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                
                Text("Start your Adventure and Go Travel Now")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                
                Text("Discover local destinations beauty with Bluskey and travel with pride")
                    .font(.system(size: 18))
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            } //: VSTACK
            Spacer()
        } //: HSTACK
        .padding(20)
    }
}
