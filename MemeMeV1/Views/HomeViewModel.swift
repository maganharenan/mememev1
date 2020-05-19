//
//  HomeViewModel.swift
//  MemeMeV1
//
//  Created by Renan Maganha on 14/05/20.
//  Copyright © 2020 Renan Maganha. All rights reserved.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var selectedImage = UIImage()
    @Published var webImage = ""
    
    //MARK: Top Text Properties
    @Published var topText                  = HomeViewModel.defaultTopText
    @Published var topTextFontSize          = HomeViewModel.defaultTextFontSize
    @Published var topTextPosition          = HomeViewModel.defaultTextPosition
    @Published var topTextColor             = HomeViewModel.defaultTextColor
    @Published var topTextStrokeColor       = HomeViewModel.defaultTextStrokeColor
    
    //MARK: Bottom Text Properties
    @Published var bottomText               = HomeViewModel.defaultBottomText
    @Published var bottomTextFontSize       = HomeViewModel.defaultTextFontSize
    @Published var bottomTextPosition       = HomeViewModel.defaultTextPosition
    @Published var bottomTextColor          = HomeViewModel.defaultTextColor
    @Published var bottomTextStrokeColor    = HomeViewModel.defaultTextStrokeColor
    
    //MARK: Default Text Properties
    static let defaultTopText = "TOP"
    static let defaultBottomText = "BOTTOM"
    static let defaultTextFontSize: CGFloat = 30
    static let defaultTextPosition: CGFloat = 0
    static let defaultTextColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    static let defaultTextStrokeColor: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    
    //MARK: Funcitions
    func restorePropertiesToDefaultValues() {
        selectedImage = UIImage()
        
        //MARK: Top Text Properties
        topText                  = HomeViewModel.defaultTopText
        topTextFontSize          = HomeViewModel.defaultTextFontSize
        topTextPosition          = HomeViewModel.defaultTextPosition
        topTextColor             = HomeViewModel.defaultTextColor
        topTextStrokeColor       = HomeViewModel.defaultTextStrokeColor
        
        //MARK: Bottom Text Properties
        bottomText               = HomeViewModel.defaultBottomText
        bottomTextFontSize       = HomeViewModel.defaultTextFontSize
        bottomTextPosition       = HomeViewModel.defaultTextPosition
        bottomTextColor          = HomeViewModel.defaultTextColor
        bottomTextStrokeColor    = HomeViewModel.defaultTextStrokeColor
    }
}

