//
//  SampleAnimationView.swift
//  UIKit-Animations
//
//  Created by Brendon Crowe on 3/10/23.
//

import UIKit

class SampleAnimationView: UIView {
    
    public lazy var pursuitLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "pursuit-logo")
        return imageView
    }()
    
    public lazy var swiftLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.isHidden = true
        imageView.clipsToBounds = true 
        imageView.image = UIImage(named: "swift-logo")
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setPursuitLogoConstraints()
        setSwiftLogoConstraints()
    }
    
    private func setPursuitLogoConstraints() {
        addSubview(pursuitLogo)
        pursuitLogo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pursuitLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            pursuitLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
            pursuitLogo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
            pursuitLogo.heightAnchor.constraint(equalTo: pursuitLogo.widthAnchor) // creates a 1:1 square
            
        ])
    }
        
        private func setSwiftLogoConstraints() {
            addSubview(swiftLogo)
            swiftLogo.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                swiftLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
                swiftLogo.centerYAnchor.constraint(equalTo: centerYAnchor),
                swiftLogo.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5),
                swiftLogo.heightAnchor.constraint(equalTo: swiftLogo.widthAnchor) // creates a 1:1 square
                
            ])
        }
    }
