//
//  CardView.swift
//  Hike
//
//  Created by harsh vardhan singh on 28/03/24.
//

import SwiftUI

struct CardView: View {
    
    //MARK : - properties
    
    @State private var imageNumber : Int = 1
    @State private var randomNumber : Int = 0
    
    //MARK: - FUNCTIONS
    
    func randomImage(){
        repeat {
        randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    
    var body: some View {
        //MARK: - CARD
        ZStack {
            CustomBackgroundView()
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                        .foregroundStyle(LinearGradient(colors: [.grayLight, .grayMedium], startPoint: .top, endPoint: .bottom))
                        Spacer()
                        Button(action: {
                            print("btn tapped")
                        }, label: {
                            CustomButtonView()
                        })
                        
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.grayMedium)
                }
                .padding(.horizontal, 30)
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [.indigoMedium,.selmonLight],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                                )
                        .frame(width: 256,height: 256)
                    
                    Image("image-\(imageNumber)")
                    .resizable()
                    .scaledToFit()
                    .animation(.easeOut(duration: 0.5),value: imageNumber)
                }//:VSTACK
                
                Button{
                    //Action
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.greenLight, .greenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                } 
                .buttonStyle(GradientButton())
            }//:ZSTACK
        }//CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
