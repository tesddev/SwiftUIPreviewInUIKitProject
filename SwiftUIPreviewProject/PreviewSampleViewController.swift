//
//  PreviewSampleViewController.swift
//  SwiftUIPreviewProject
//
//  Created by Tes on 06/11/2022.
//

import UIKit

class PreviewSampleViewController: UIViewController {

    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.setTitle("Button", for: .normal)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

/// To use the preview option on any class, just copy this file below to the bottom of any view controller class you wish to use it with and rename the struct name to reflect the class and also the class name in the for each block. Enjoy!
///  Ensure you already have the PreviewSwiftUIFile or it would not compile
///  Ensure you're building with at least one of the devices listed in "devicesNames"
#if canImport(SwiftUI) && DEBUG
import SwiftUI

@available(iOS 13.0, *)
struct PreviewSampleViewController_Preview: PreviewProvider {
    static var previews: some View {
        ForEach(deviceNames, id: \.self) { deviceName in
            UIViewControllerPreview {
                PreviewSampleViewController()
            }.previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif

