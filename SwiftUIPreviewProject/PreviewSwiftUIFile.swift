//
//  PreviewSwiftUIFile.swift
//  SwiftUIPreviewProject
//
//  Created by Tes on 06/11/2022.
//

import SwiftUI
import UIKit

#if canImport(SwiftUI) && DEBUG

let deviceNames: [String] = [
    "iPhone SE (3rd generation)",
//    "iPhone 14 Pro",
    "iPhone 14 Pro Max"
]

struct UIViewControllerPreview<ViewController: UIViewController>: UIViewControllerRepresentable {
    
    let viewController: ViewController

    init(_ builder: @escaping () -> ViewController) {
        viewController = builder()
    }

    // MARK: - UIViewControllerRepresentable
    func makeUIViewController(context: Context) -> ViewController {
        viewController
    }

    func updateUIViewController(_ uiViewController: ViewController, context: UIViewControllerRepresentableContext<UIViewControllerPreview<ViewController>>) {
        return
    }
}
#endif
