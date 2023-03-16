//
//  AnimationsTabController.swift
//  UIKit-Animations
//
//  Created by Brendon Crowe on 3/10/23.
//

import UIKit

class AnimationsTabController: UITabBarController {
    
    private lazy var sampleAnimationsVC: SampleAnimationsController = {
        let viewController = SampleAnimationsController()
        viewController.tabBarItem = UITabBarItem(title: "Frame", image: UIImage(systemName: "1.circle"), tag: 0)
        return viewController
    }()
    
    private lazy var constraintsAnimationVC: ConstraintsAnimationController = {
        // step1: get instance of storyboard
        let constraintsAnimationSB = UIStoryboard(name: "ConstraintsAnimation", bundle: nil)
        
        // step 2: instantiate viewController from storyboard instance
        guard let viewController = constraintsAnimationSB.instantiateViewController(withIdentifier: "ConstraintsAnimationController") as? ConstraintsAnimationController else {
            fatalError("could not load ConstraintsAnimationController")
        }
        viewController.tabBarItem = UITabBarItem(title: "Constraints", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewController
    }()
    
    private lazy var transitionAnimationsController: TransitionAnimationsController = {
        let storyboard = UIStoryboard(name: "TransitionAnimations", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "TransitionAnimationsController") as? TransitionAnimationsController else {
            fatalError("Error, could not load TransitionAnimationsController")
        }
        viewController.tabBarItem = UITabBarItem(title: "Transition", image: UIImage(systemName: "3.circle"), tag: 2)
        return viewController
    }()
    
    
    private lazy var propertyAnimationVC: PropertyAnimatorController = {
        let storyboard = UIStoryboard(name: "PropertyAnimator", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "PropertyAnimatorController") as? PropertyAnimatorController else {
            fatalError("Error, could not load TransitionAnimationsController")
        }
        viewController.tabBarItem = UITabBarItem(title: "Property", image: UIImage(systemName: "4.circle"), tag: 3)
        return viewController
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .systemGray6
        tabBar.alpha = 0.8
        // the UITabBarController class has a viewControllers property that takes in an array of UIViewControllers
        viewControllers = [sampleAnimationsVC, constraintsAnimationVC, transitionAnimationsController, propertyAnimationVC]
        
    }
}
