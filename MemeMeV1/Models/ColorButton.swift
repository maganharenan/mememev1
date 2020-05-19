//
//  ColorButton.swift
//  MemeMeV1
//
//  Created by Renan Maganha on 17/05/20.
//  Copyright © 2020 Renan Maganha. All rights reserved.
//

import Foundation
import UIKit

struct ColorButton: Hashable {
    var id = UUID()
    var color: UIColor
}

let colorButtonsData = [
    ColorButton(color: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)),
    ColorButton(color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)),
    ColorButton(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
]


