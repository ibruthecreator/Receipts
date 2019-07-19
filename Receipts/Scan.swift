//
//  Scan.swift
//  Receipts
//
//  Created by Mohammed Ibrahim on 2019-07-19.
//  Copyright © 2019 Mohammed Ibrahim. All rights reserved.
//

import SwiftUI
import UIKit
import VisionKit
import Combine

struct Scan: UIViewControllerRepresentable {
    
    // Type of View Controller
    // In this case, since we are using a UIKit document scanner,
    // the type is VNDocumentCameraViewController
    typealias UIViewControllerType = VNDocumentCameraViewController
    
    func makeCoordinator() -> Scan.Coordinator {
        return Coordinator()
    }
    
    // Renders the view controller as a struct through SwiftUI
    func makeUIViewController(context: UIViewControllerRepresentableContext<Scan>) -> VNDocumentCameraViewController {
        let documentCameraViewController = VNDocumentCameraViewController()

        documentCameraViewController.delegate = context.coordinator
        return documentCameraViewController
    }
    
    func updateUIViewController(_ uiViewController: VNDocumentCameraViewController, context: UIViewControllerRepresentableContext<Scan>) {
        // Nothing really happens here, I guess?
    }
    
    // Allows us to communicate with the views context,
    // including the VNDocumentCameraViewControllerDelegate
    class Coordinator: NSObject, VNDocumentCameraViewControllerDelegate {
        override init() {
//            self.$recognizedText = recognizedText
//            textRecognizer = TextRecognizer(recognizedText: recognizedText)
            print("Start")
        }
        
        public func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
            controller.navigationController?.popViewController(animated: true)
        }
    }
    
}

#if DEBUG
struct Scan_Previews: PreviewProvider {
    static var previews: some View {
        Scan()
    }
}
#endif
