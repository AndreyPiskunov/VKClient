//
//  ViewController.swift
//  1
//
//  Created by User on 21.05.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userLoginTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap =  UITapGestureRecognizer (target: self, action: #selector(onTap))
        self.view.addGestureRecognizer(tap)
    }
        @objc func onTap (_ sender: Any) {
            self.view.endEditing(true)
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        if let login = userLoginTextField.text, login == "mail@mail.ru"{
            userLoginTextField.backgroundColor = UIColor.systemGreen }
        else {
            userLoginTextField.backgroundColor = UIColor.systemRed
        }
        
        if let password = userPasswordTextField.text, password == "12345"{
            userPasswordTextField.backgroundColor = UIColor.systemGreen }
        else {
            userPasswordTextField.backgroundColor = UIColor.systemRed
        }
    }
}
