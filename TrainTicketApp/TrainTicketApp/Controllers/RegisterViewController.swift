//
//  RegisterViewController.swift
//  TrainTicketApp
//
//  Created by Suelen Vicente on 2022-05-15.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var birthDateTextField: UITextField!
    
    @IBOutlet weak var documentIdTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordConfirmationTextField: UITextField!
    
    @IBAction func touchUpInsideRegisterButton(_ sender: Any) {
        guard let email = emailTextField.text,
              !email.isEmpty,
              let password = passwordTextField.text,
              !password.isEmpty,
              let confirmPassword = passwordConfirmationTextField.text,
              !confirmPassword.isEmpty,
              let firstName = firstNameTextField.text,
              !firstName.isEmpty,
              let lastName = lastNameTextField.text,
              !lastName.isEmpty,
              let birthDate = birthDateTextField.text,
              !birthDate.isEmpty,
              let documentId = documentIdTextField.text,
              !documentId.isEmpty else{
                  showError(title: "Error Registering", message: "All fields must be filled.")
                  return
              }

            guard password == confirmPassword else{
                showError(title: "Error Registering", message: "Passwords do not match!")
                return
            }

            Auth.auth().createUser(withEmail: email, password: password) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            if error == nil {
                // Success
                Persistence.addUser(user: User(firstName: firstName, lastName: lastName, email: email, password: password, id: documentId, birthDate: birthDate, admin: false))
                strongSelf.showMainScreen()
            } else {
                // Failure
                strongSelf.showError(title: "Error Registering", message: error?.localizedDescription)
            }
        }
    }
    
    @IBAction func touchUpInsideCancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
