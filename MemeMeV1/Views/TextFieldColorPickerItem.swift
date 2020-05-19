//
//  TextFieldColorPickerItem.swift
//  MemeMeV1
//
//  Created by Renan Maganha on 17/05/20.
//  Copyright © 2020 Renan Maganha. All rights reserved.
//

import SwiftUI

struct TextFieldColorPickerItem: View {
    @Binding var positionX: CGFloat
    @Binding var topStrokeColor: UIColor
    @Binding var topTextColor: UIColor
    @Binding var bottomStrokeColor: UIColor
    @Binding var bottomTextColor: UIColor
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5, style: .continuous)
                .foregroundColor(Color(#colorLiteral(red: 0.1856770865, green: 0.2010366391, blue: 0.2233502538, alpha: 1)))
                .frame(width: 20, height: 20)
                .rotationEffect(.degrees(45))
                .offset(x: positionX, y: -134)
            
            VStack {
                Text("Top Text Stroke:")
                    .foregroundColor(.white)
                    .font(.headline)
                
                ColorPicker(color: $topStrokeColor)
                
                Text("Top Text:")
                    .foregroundColor(.white)
                    .font(.headline)
                
                ColorPicker(color: $topTextColor)
                
                Text("Bottom Text Stroke:")
                    .foregroundColor(.white)
                    .font(.headline)
                
                ColorPicker(color: $bottomStrokeColor)
                
                Text("Bottom Text:")
                    .foregroundColor(.white)
                    .font(.headline)
                
                ColorPicker(color: $bottomTextColor)
                
            }
            .frame(width: 300, height: 270)
            .background(BackgroundBarStyle(fx: UIBlurEffect(style: .dark)).opacity(0.8))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))  
        }
    }
}

struct TextFieldColorPickerItem_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldColorPickerItem(positionX: .constant(0), topStrokeColor: .constant(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), topTextColor: .constant(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), bottomStrokeColor: .constant(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), bottomTextColor: .constant(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
    }
}

struct ColorPicker: View {
    @Binding var color: UIColor
    
    var body: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<colorButtonsData.count) { index in
                        Button(action: {
                            self.color = colorButtonsData[index].color
                        }, label: {
                            RoundedRectangle(cornerRadius: 7, style: .continuous)
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color(colorButtonsData[index].color))
                        })
                    }
                }
                .padding(.horizontal, 10)
            }
        }
        .padding(.horizontal, 20)
    }
}
