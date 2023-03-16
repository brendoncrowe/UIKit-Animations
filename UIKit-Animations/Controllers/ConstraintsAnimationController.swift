//
//  ConstraintsAnimationsController.swift
//  UIKit-Animations
//
//  Created by Brendon Crowe on 3/10/23.
//

import UIKit

class ConstraintsAnimationController: UIViewController {

    @IBOutlet weak var viewYConstraint: NSLayoutConstraint!
    @IBOutlet weak var box: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    @IBAction func animateViewUp(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.2, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.0, options: []) {
            sender.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        } completion: { (done) in
            sender.transform = .identity
        }
        
        if box.frame.origin.y < 100 { return }
        // when changing the constraints in iOS in order to be animated, you only need self.view.layoutIfNeeded and the animation will take place
        // negative Y values go up
        viewYConstraint.constant -= 100
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 10.0, options: [.curveEaseIn]) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func animateViewDown(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.2, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.0, options: []) {
            sender.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        } completion: { (done) in
            sender.transform = .identity
        }
        
        if box.frame.origin.y > 500 { return }
        
        // positive Y values go down
        viewYConstraint.constant += 100
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 10.0, options: [.curveEaseOut]) {
            self.view.layoutIfNeeded()
        }
    }
}
