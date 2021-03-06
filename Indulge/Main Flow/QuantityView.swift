//
//  QuantityView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-30.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class QuantityView: UIView {
    
    lazy var whiteContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 27.0
        view.clipsToBounds = true
        
        return view
    }()
    
    lazy var productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.red
        imageView.image = #imageLiteral(resourceName: "test1")
        imageView.contentMode = ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    lazy var quantityLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = UIFont(name: "Avenir", size: 45.0)
        
        return label
    }()
    
    lazy var increaseQntButton: UIButton = {
        let button = UIButton()
        button.setImage(Images.increaseQuantityButtonImage, for: .normal)
        
        return button
    }()
    
    lazy var decreaseQntButton: UIButton = {
        let button = UIButton()
        button.setImage(Images.decreaseQuantityButtonImage, for: .normal)
        
        return button
    }()
    
    class Constraints {
        
        static func setWhiteContainerView(_ overlay: UIView, _ view: UIView) {
            overlay.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            overlay.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            overlay.widthAnchor.constraint(equalToConstant: 279).isActive = true
            overlay.heightAnchor.constraint(equalToConstant: 241).isActive = true
        }
        
        static func setProductImageView(_ imageView: UIImageView, _ container: UIView) {
            imageView.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
            imageView.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
            imageView.widthAnchor.constraint(equalTo: container.widthAnchor).isActive = true
            imageView.heightAnchor.constraint(equalToConstant: 155).isActive = true
        }
        
        static func setQuantityLabel(_ label: UILabel, _ container: UIView, _ center: UIView) {
            label.centerYAnchor.constraint(equalTo: center.centerYAnchor).isActive = true
            label.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        }
        
        static func setIncreaseQntButton(_ button: UIButton, _ view: UIView) {
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -26).isActive = true
            button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        }
        
        static func setDecreaseQntButton(_ button: UIButton, _ view: UIView) {
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -26).isActive = true
            button.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6157159675)
        self.addSubviewLayout(whiteContainerView)
        whiteContainerView.addSubviewLayout(increaseQntButton)
        whiteContainerView.addSubviewLayout(decreaseQntButton)
        whiteContainerView.addSubviewLayout(quantityLabel)
        whiteContainerView.addSubviewLayout(productImageView)
        
        Constraints.setWhiteContainerView(whiteContainerView, self)
        Constraints.setIncreaseQntButton(increaseQntButton, whiteContainerView)
        Constraints.setDecreaseQntButton(decreaseQntButton, whiteContainerView)
        Constraints.setQuantityLabel(quantityLabel, whiteContainerView, increaseQntButton)
        Constraints.setProductImageView(productImageView, whiteContainerView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
