//
//  CustomButtonView.swift
//  Hike
//
//  Created by harsh vardhan singh on 29/03/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [.greenLight, .greenMedium], startPoint: .topLeading, endPoint: .bottomTrailing))
                
            Circle()
                .stroke(
                    LinearGradient(colors: [.grayLight, .grayMedium], startPoint: .top, endPoint: .bottom),lineWidth: 4
            )
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [.grayLight,.grayMedium], startPoint: .top, endPoint: .bottom))
        }
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
}
