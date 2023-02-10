//
//  RegisterViewController.swift
//  FlashChat
//
//  Created by tetsuta matsuyama on 2022/07/12.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    //MARK: - Firebase Auth: Register
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if emailTextfield.text == "a@b.com", passwordTextfield.text == "abcdef" {
            self.performSegue(withIdentifier: K.registerSegue, sender: self)
        }
    }
}


extension RegisterViewController {
    
    func displayAlert(_ message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            print(message)
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
