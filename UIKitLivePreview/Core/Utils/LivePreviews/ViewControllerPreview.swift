//
//  ViewControllerPreview.swift
//  UIKitLivePreview
//
//  Created by Oscar.Odon on 03/08/2021.
//

import UIKit
import SwiftUI

@available(iOS 13.0, *)
struct ViewControllerPreview: UIViewControllerRepresentable {
    let viewControllerBuilder: () -> UIViewController

    init(_ viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return viewControllerBuilder()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // Not needed
    }
}
