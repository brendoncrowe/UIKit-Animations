//
//  SampleAnimationsController.swift
//  UIKit-Animations
//
//  Created by Brendon Crowe on 3/10/23.
//

import UIKit

class SampleAnimationsController: UIViewController {
    
    private let sampleAnimationsView = SampleAnimationView()
    
    override func loadView() {
        view = sampleAnimationsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        resetDefaultsForAnimation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        scaleAnimation()
    }
    
    private func scaleAnimation() {
        
        /* properties on view that can be animated
         - alpha
         - corner radius
         - position
         - center
         - transition
         - color
         - shadow
         - opacity
         - transform: scale, rotate, translate
         */
        
        // transformed value of 1.0 represents the identity of the view
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: [], animations: {
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
            self.sampleAnimationsView.pursuitLogo.alpha = 0.0
        }) { (done) in
            // gets called after initial animation is done
            UIView.animate(withDuration: 0.5) {
                self.sampleAnimationsView.swiftLogo.isHidden = false
                self.sampleAnimationsView.swiftLogo.layer.cornerRadius = self.sampleAnimationsView.swiftLogo.bounds.size.width / 2
            }
        }
    }
    
    private func resetDefaultsForAnimation() {
       sampleAnimationsView.pursuitLogo.transform = CGAffineTransform.identity
       sampleAnimationsView.swiftLogo.layer.cornerRadius = 0
       sampleAnimationsView.pursuitLogo.alpha = 1.0
       sampleAnimationsView.swiftLogo.isHidden = true
     }

    private func pulsatingAnimation() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.repeat, .autoreverse]) {
            // code here
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            
        } completion: { (done) in
            // code to be executed after animation is complete
            // options - you can reset view's values
            // options - create another animation
            
            UIView.animate(withDuration: 0.3) {
                self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform.identity // .identity reverts back to original state
            }
            
            // try not to exceed more than 1 subsequent animation as the better choice would be animateKeyFrames() for multiple chain animations
        }
    }
}
