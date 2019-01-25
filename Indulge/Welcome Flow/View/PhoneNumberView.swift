//
//  PhoneNumberView.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-24.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class PhoneNumberView: UIView {
    
    lazy var backButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Back", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
       
        return btn
    }()
    
    lazy var phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.insertText("+1 (613) XXX XXX")
        
        return textField
    }()
    
    lazy var nextButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("NEXT", for: .normal)
        btn.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.3294117647, blue: 0.3803921569, alpha: 1)
        
        return btn
    }()
    
    class Constraints {
        
        static func getBackButton(_ btn: UIButton, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(btn, .leading, .equal, view, .leading, 1.0, 16)
            let clipBottom = NSLayoutConstraint(btn, .top, .equal, view, .top, 1.0, 50)
            let width = NSLayoutConstraint(btn, .width, .equal, nil, .width, 1.0, 100)
            let height = NSLayoutConstraint(btn, .height, .equal, nil, .height, 1.0, 50)
            
            return [horizontalCenter, clipBottom, width, height]
        }
        
        static func getPhoneNumberTextField(_ textField: UITextField, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(textField, .centerX, .equal, view, .centerX, 1.0, 0)
            let clipBottom = NSLayoutConstraint(textField, .top, .equal, view, .top, 1.0, 187)
            let width = NSLayoutConstraint(textField, .width, .equal, nil, .width, 1.0, 134)
            let height = NSLayoutConstraint(textField, .height, .equal, nil, .height, 1.0, 26)
            
            return [horizontalCenter, clipBottom, width, height]
        }
        
        static func getNextButton(_ btn: UIButton, _ view: UIView) -> [NSLayoutConstraint] {
            
            let horizontalCenter = NSLayoutConstraint(btn, .centerX, .equal, view, .centerX, 1.0, 0)
            let clipBottom = NSLayoutConstraint(btn, .top, .equal, view, .top, 1.0, 396)
            let width = NSLayoutConstraint(btn, .width, .equal, view, .width, 1.0, 0)
            let height = NSLayoutConstraint(btn, .height, .equal, nil, .height, 1.0, 55)
            
            return [horizontalCenter, clipBottom, width, height]
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.addSublayer(Colors.backround(self.bounds))
        
        self.addSubviewLayout(backButton)
        self.addSubviewLayout(phoneNumberTextField)
        self.addSubviewLayout(nextButton)
        
        NSLayoutConstraint.activate(Constraints.getBackButton(backButton, self))
        NSLayoutConstraint.activate(Constraints.getPhoneNumberTextField(phoneNumberTextField, self))
        NSLayoutConstraint.activate(Constraints.getNextButton(nextButton, self))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
