//
//  ImagePickerView.swift
//  MemeMeV1
//
//  Created by Renan Maganha on 14/05/20.
//  Copyright © 2020 Renan Maganha. All rights reserved.
//

import SwiftUI

struct ImagePickerView: UIViewControllerRepresentable {
    @Binding var sourceType: String
    @Binding var isPresented: Bool
    @Binding var selectedImage: UIImage
    @Binding var webImage: String
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ImagePickerView>) {
        
    }
    
    func makeCoordinator() -> ImagePickerView.Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerView>) -> UIViewController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        if sourceType == "photoLibrary" {
            picker.sourceType = .photoLibrary
        } else if sourceType == "camera" {
            picker.sourceType = .camera
        }
        return picker
    }
    
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        let parent: ImagePickerView
        init(parent: ImagePickerView) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let selectedImage = info[.originalImage] as? UIImage {
                if parent.webImage != ""{
                    parent.webImage = ""
                }
                self.parent.selectedImage = selectedImage
            }
            
            self.parent.isPresented = false
    
        }
        
    }

}
