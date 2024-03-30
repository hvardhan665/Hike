//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by harsh vardhan singh on 28/03/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            //MARK: - Depth
            Color.greenDark
                .cornerRadius(40)
                .offset(y:12)
            //MARK: - Light
            Color.greenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.8)
            //MARK: - Surface
            
            LinearGradient(
                colors: [.greenLight,.greenMedium],
                startPoint: .top,
                endPoint: .bottom)
            .cornerRadius(40)
        }
            
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
