//
//  ViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-22.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var welcomeView: WelcomeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeView = WelcomeView(frame: self.view.frame)
        self.view = welcomeView
        
        welcomeView.createAccountButton.addTarget(self, action: #selector(createAccountTapped), for: .touchUpInside)
        welcomeView.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    @objc func createAccountTapped(){
        let phoneNumberViewController = PhoneNumberViewController()
        navigationController?.pushViewController(phoneNumberViewController, animated: true)
    }
    
    @objc func loginButtonTapped(){
        navigationController?.pushViewController(LoginViewController(), animated: true)
    }
}

