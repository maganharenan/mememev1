//
//  Notifications.swift
//  MemeMeV1
//
//  Created by Renan Maganha on 14/05/20.
//  Copyright © 2020 Renan Maganha. All rights reserved.
//

import SwiftUI

extension Notification {
    var keyboardHeight: CGFloat {
        return (userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect)?.height ?? 0
    }
}
