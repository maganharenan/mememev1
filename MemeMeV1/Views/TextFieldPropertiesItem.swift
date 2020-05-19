//
//  PopUpMenuItem.swift
//  MemeMeV1
//
//  Created by Renan Maganha on 17/05/20.
//  Copyright © 2020 Renan Maganha. All rights reserved.
//

import SwiftUI

struct TextFieldPropertiesItem: View {
    @Binding var positionX: CGFloat
    @Binding var topTextFontSize: CGFloat
    @Binding var bottomTextFontSize: CGFloat
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5, style: .continuous)
                .foregroundColor(Color(#colorLiteral(red: 0.1856770865, green: 0.2010366391, blue: 0.2233502538, alpha: 1)))
                .frame(width: 20, height: 20)
                .rotationEffect(.degrees(45))
                .offset(x: positionX, y: -50.5)
            
            VStack {
                Text("Top Text:")
                    .foregroundColor(.white)
                    .font(.headline)

                HStack {
                    Text("Size:")
                        .foregroundColor(.white)
                        .font(.footnote)
                    
                    Spacer()
                    
                    Slider(value: $topTextFontSize, in: 10...100, step: 0.1)
                        .accentColor(.white)
                        .frame(width: 200)
                }
                .padding(.horizontal)
                
                Text("Bottom Text:")
                    .foregroundColor(.white)
                    .font(.headline)
                
                HStack {
                    Text("Size:")
                        .foregroundColor(.white)
                        .font(.footnote)
                    
                    Spacer()
                    
                    Slider(value: $bottomTextFontSize, in: 10...100, step: 0.1)
                        .accentColor(.white)
                        .frame(width: 200)
                }
                .padding(.horizontal)
                
                
            }
            .frame(width: 300, height: 150)
            .background(BackgroundBarStyle(fx: UIBlurEffect(style: .dark)).opacity(0.8))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .offset(y: 22.5)
        }
    }
}

struct TextAttributesView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldPropertiesItem(positionX: .constant(0), topTextFontSize: .constant(30), bottomTextFontSize: .constant(30))
    }
}
