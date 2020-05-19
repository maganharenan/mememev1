//
//  WebImageSelectorView.swift
//  MemeMeV1
//
//  Created by Renan Maganha on 14/05/20.
//  Copyright © 2020 Renan Maganha. All rights reserved.
//

import SwiftUI
import SDWebImage

struct WebImageSelectorView: View {
    @Binding var webImage: String
    @Binding var showWebImageSelector: Bool
    @Binding var deviceImage: UIImage
    @State var pasteUrl = ""
    
    var body: some View {
        VStack {
            
            Text("Select image from web")
                .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .padding(.bottom, 40)
            
            TextField("Paste the image URL:", text: $pasteUrl)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 220)
                .font(.footnote)
                .padding(.bottom, 40)
            
            Button(action: {
                if self.deviceImage != UIImage() {
                    self.deviceImage = UIImage()
                }
                self.webImage = self.pasteUrl
                self.showWebImageSelector.toggle()
            }, label: {
                Text("Ok")
                    .foregroundColor(.white)
            })
        }
        .frame(width: 300, height: 240)
        .background(BackgroundBarStyle(fx: UIBlurEffect(style: .dark)))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.blue.opacity(0.2), radius: 5, x: 0, y: 0)
    }
}

struct WebImageSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        WebImageSelectorView(webImage: .constant(""), showWebImageSelector: .constant(true), deviceImage: .constant(UIImage()))
    }
}
