//
//  LoginViewController.swift
//  Indulge
//
//  Created by Michel Balamou on 2019-01-25.
//  Copyright © 2019 Michel Balamou. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var loginView: LoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginView = LoginView(frame: self.view.frame)
        self.view = loginView
        
        loginView.continueButton.addTarget(self, action: #selector(continueButtonTapped), for: .touchUpInside)
        loginView.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loginView.emailTextField.becomeFirstResponder()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        loginView.emailTextField.becomeFirstResponder()
    }
    
    @objc func continueButtonTapped(){
        // TODO: 1. Send request to the server
        // 2. Verify credentials (login & password)
        // 3. if success show location view ↓↓↓
        navigationController?.pushViewController(LocationViewController(), animated: true)
    }
    
    @objc func backButtonTapped(){
        navigationController?.popViewController(animated: true)
    }
}