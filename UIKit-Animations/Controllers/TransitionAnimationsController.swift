//
//  TransitionAnimationsController.swift
//  UIKit-Animations
//
//  Created by Brendon Crowe on 3/16/23.
//

import UIKit

class TransitionAnimationsController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    // create tap gesture
    
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(animate))
        return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set default image
        imageView.image = UIImage(named: "dog")
        // enable user interaction on the image view
        imageView.isUserInteractionEnabled = true
        imageView.layer.cornerRadius = 16
        // add the gesture to the view
        imageView.addGestureRecognizer(tapGesture)
        imageView.backgroundColor = .systemGreen
    }
    
    @objc private func animate() {
        let duration: Double = 0.8
        let curveOption: UIView.AnimationOptions = .curveEaseInOut
        
        // four built in bezier animation curves
        // .curveEaseInOut
        // .curveEaseIn
        // .curveEaseOut
        // .curveLinear 
        
        if imageView.image == UIImage(named: "dog") {
            UIView.transition(with: imageView, duration: duration, options: [.transitionFlipFromRight, curveOption]) {
                self.imageView.image = UIImage(named: "cat")
                self.imageView.backgroundColor = .systemBlue
            }
        } else {
            UIView.transition(with: imageView, duration: duration, options: [.transitionFlipFromLeft, curveOption]) {
                self.imageView.image = UIImage(named: "dog")
                self.imageView.backgroundColor = .systemGreen

            }
        }
    }
}
