//
//  LoginViewController.swift
//  TrainTicketApp
//
//  Created by Suelen Vicente on 2022-05-15.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func touchUpInsideLoginButton(_ sender: Any) {
        guard let email = emailTextField.text,
             !email.isEmpty,
             let password = passwordTextField.text,
             !password.isEmpty else{
         showError(title: "Login Error", message: "You must fill both username and password.")
         return
        }
 
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
 
            if error == nil {
                // Success
                strongSelf.showMainScreen()
            } else {
                // Failure
                strongSelf.showError(title: "Incorrect Login or password", message: error?.localizedDescription)
            }
        }
    }
    
    @IBAction func touchUpInsideRegisterButton(_ sender: Any) {
        let registerVC = RegisterViewController()

        registerVC.modalPresentationStyle = .fullScreen
        present(registerVC, animated: true, completion: nil)
    }
    
}
