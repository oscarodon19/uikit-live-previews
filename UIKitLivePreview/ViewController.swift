//
//  ViewController.swift
//  UIKitLivePreview
//
//  Created by Oscar.Odon on 03/08/2021.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var imageView: UIImageView = {
        let image: UIImage?
        if #available(iOS 13.0, *) {
            image = UIImage(systemName: "bolt.circle")
        } else {
            image = UIImage()
        }
        
        let imageView = UIImageView()
        imageView.image = image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor),
            imageView.heightAnchor.constraint(equalTo: view.widthAnchor),
        ])
        
        view.backgroundColor = .white
    }
}

#if DEBUG
import SwiftUI

struct PreviewViewController_Previews: PreviewProvider {
    @available(iOS 13.0.0, *)
    static var previews: some View {
        ViewControllerPreview {
            ViewController()
        }
    }
}

#endif
