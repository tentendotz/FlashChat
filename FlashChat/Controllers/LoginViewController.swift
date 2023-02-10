//
//  LoginViewController.swift
//  FlashChat
//
//  Created by tetsuta matsuyama on 2022/07/12.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    //MARK: - Firebase Auth: Log in
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if emailTextfield.text == "1@2.com" , passwordTextfield.text == "123456" {
            self.performSegue(withIdentifier: K.loginSegue, sender: self)
        } else {
            let okAction = UIAlertAction(title: "OK", style: .default)
            displayAlert(title: "Error", message: "Sorry, couldn't log you in.", actions: [okAction])
        }
    }
    
    func displayAlert(title: String, message: String, actions: [UIAlertAction]) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        actions.forEach { alert.addAction($0) }
        present(alert, animated: true)
    }
    
}
