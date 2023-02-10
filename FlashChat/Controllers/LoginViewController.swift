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
        }
    }
}
