//
//  BackgroundImage.swift
//  FamousSaying
//
//  Created by J_Min on 2022/01/16.
//

import SwiftUI

struct BackgroundImage: View {
    
    let imageName: String
    let cornerRadious: CGFloat
    let width: CGFloat
    let height: CGFloat
    
    init(_ imageName: String, cornerRadious: CGFloat = 14, width: CGFloat, height: CGFloat) {
        self.imageName = imageName
        self.cornerRadious = cornerRadious
        self.width = width
        self.height = height
    }
    
    var body: some View {
        
            ResizedImage(imageName)
                .frame(width: width, height: height)
                .cornerRadius(cornerRadious)
                .shadow(color: .black.opacity(0.4), radius: 2, x: 3, y: 3)

    }
}

struct BackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImage("1", width: 300, height: 390)
    }
}
