//
//  AnimationsTabController.swift
//  UIKit-Animations
//
//  Created by Brendon Crowe on 3/10/23.
//

import UIKit

class AnimationsTabController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        viewControllers = [SampleAnimationsController(), ConstraintsAnimationController()]
        
    }
}
