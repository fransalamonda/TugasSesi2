//
//  ContentUIView.swift
//  TugasSesi2
//
//  Created by Frans Sala Monda on 26/11/22.
//

import SwiftUI

struct ContentUIView: View {
    // MARK: - PROPERTIES
    @State private var isShowingDetailSheet: Bool = false
    
    var body: some View {
        ZStack {
            Image("bg-iphone")
                .resizable()
                .overlay {
                    Color.black
                        .opacity(0.6)
                }
                .ignoresSafeArea()
            VStack {
                HStack {
                    headerView
                        .foregroundColor(.white)
                    userProfileView
                        .onTapGesture {
                            isShowingDetailSheet.toggle()
                        }
                        .sheet(isPresented: $isShowingDetailSheet) {
                            Text("Testt")
                            DetailSheetView()
                                //.presentationDetents([.medium, .large])
                                .presentationDetents([.fraction(0.30),.fraction(0.50)])
                                .presentationDragIndicator(.visible)
                        }
                }//HStack
                
                
                
                HStack(spacing: 15) {
                    PricinView(title: "Bronze", price: "$9", textColor: .white, bgColor: .blue, icon: "bell.and.waveform")
                    ZStack {
                        PricinView(title: "Silver", price: "$12", textColor: .white, bgColor: .purple, icon: "wand.and.rays.inverse")
                        Text("Best for ios Developer")
                            .font(.system(.caption, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(5)
                            .background(.yellow)
                            .offset(x: 0, y: 100)
                    }//Zstack
                }//hstack
                Spacer()
            }//VStack
            .padding(.horizontal)
        }
        
    }
}

struct ContentUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContentUIView()
    }
}

// PRICING VIEW
struct PricinView: View {
    var title: String
        var price: String
        var textColor: Color
        var bgColor: Color
        var icon: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(textColor)
            Text(title)
                .font(.system(size: 27, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 24, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            
            Text("per-month")
                            .font(.headline)
                            .foregroundColor(textColor)
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                .padding(40)
                .background(bgColor)
                .cornerRadius(10)
    }
}

// MARK: - EXTENSION
extension ContentUIView {
    
    private var headerView: some View {
//        HStack {
//            VStack(alignment: .leading, spacing: 2) {
//                Text("Pricing Pland")
//                    .font(.system(.largeTitle, design: .rounded))
//                    .fontWeight(.black)
//                Text("For You")
//                    .font(.system(.largeTitle, design: .rounded))
//                    .fontWeight(.black)
//
//            } //stack
//            Spacer()
//        } //HStack
//        .padding()
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                    Text("Princing Plan")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                    Text("For You")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.black)
                    
                    
            }//vstack
            Spacer()
        }
        .padding()
    }
    
    private var userProfileView: some View {
        Color.primary
            .frame(width: 40, height: 40)
            .clipShape(Circle())
            .opacity(0.1)
            .overlay {
             Image(systemName: "person.circle")
                    .symbolRenderingMode(.hierarchical)
                    .foregroundColor(.white)
                    .scaledToFit()
                    .padding(20)
            }
    }
    
}


//struct PricingView: View {
//    var icon: String
//    var textColor: Color
//    var title: String
//    var bgColor: Color
//
//
//    var body: some View {
//        VStack{
//            Image(systemName: icon)
//                            .font(.largeTitle)
//                            .foregroundColor(textColor)
//
//        }//vstack
//        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
//               .padding(40)
//               .background(bgColor)
//               .cornerRadius(10)
//    }
//}


