//
//  PropertyAnimatorController.swift
//  UIKit-Animations
//
//  Created by Brendon Crowe on 3/16/23.
//

import UIKit

class PropertyAnimatorController: UIViewController {
    
    
    @IBOutlet weak var duckImageView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    // need an instance to a UIViewPropertyAnimator
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // instantiate animator property
        animator = UIViewPropertyAnimator(duration: 2.0, curve: .easeInOut, animations: {
            // declare the animation
            // transform
            self.duckImageView.transform = CGAffineTransform(scaleX: 1.5, y: 1)
        })
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
}
