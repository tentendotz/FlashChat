//
//  LoginViewController.swift
//  FlashChat
//
//  Created by tetsuta matsuyama on 2022/07/12.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    //MARK: - Firebase Auth: Log in
    
    @IBAction func loginPressed(_ sender: UIButton) {
        guard let email = emailTextfield.text, let password = passwordTextfield.text else { return }
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error {
                let okAction = UIAlertAction(title: "OK", style: .default)
                self.displayAlert(title: "Error", message: "Sorry, couldn't log you in.", actions: [okAction])
                print(error) // for debug
            } else {
                self.performSegue(withIdentifier: K.loginSegue, sender: self)
            }
        }
    }
}


extension LoginViewController {
    
    func displayAlert(title: String, message: String, actions: [UIAlertAction]) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        actions.forEach { alert.addAction($0) }
        present(alert, animated: true)
    }
}
