//
//  RegisterViewController.swift
//  FlashChat
//
//  Created by tetsuta matsuyama on 2022/07/12.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.tintColor = UIColor(named: K.BrandColors.blue)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    
    //MARK: - Firebase Auth: Register
    
    @IBAction func registerPressed(_ sender: UIButton) {
        guard let email = emailTextfield.text, let password = passwordTextfield.text else { return }
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error {
                self.displayAlert(error.localizedDescription)
                print(error)
            } else {
                self.performSegue(withIdentifier: K.registerSegue, sender: self)
            }
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
