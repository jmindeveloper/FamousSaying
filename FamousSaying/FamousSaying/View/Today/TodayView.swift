//
//  TodayView.swift
//  FamousSaying
//
//  Created by J_Min on 2022/01/16.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        NavigationView() {
            
            GeometryReader { g in
                ZStack {
                    BackgroundImage("1", width: g.size.width - 40, height: g.size.width)
                    Text("명언")
                        .font(.largeTitle).bold()
                        .foregroundColor(.white)
                }
                .position(x: g.frame(in: .local).midX, y: g.frame(in: .local).midY)
                .padding(.top, 35)
                .navigationTitle("Today's")
                .navigationBarTitleDisplayMode(.large)
            }
            .edgesIgnoringSafeArea(.top)
        }
        .edgesIgnoringSafeArea(.top)
    }
}


// MARK: View
extension TodayView {
    
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
