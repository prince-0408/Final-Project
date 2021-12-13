//
//  SignUpViewController.swift
//  AJU
//
//  Created by Anand Yadav on 21/10/21.
//

import UIKit
import FirebaseAuth
import Firebase
import nanopb


class SignUpViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var txtConfirmPwd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func SignUpTapped(_ sender: Any) {
        
        validateUserInput()

    }
    @IBAction func CreateAccount(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "Login")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
        
    }
    
func validateUserInput() {
    if email.text!.isEmpty || name.text!.isEmpty || password.text!.isEmpty || txtConfirmPwd.text!.isEmpty {
    
    } else {
        UserDefaults.standard.setEmail(value: email.text!)
        UserDefaults.standard.setUserName(value: name.text!)
        UserDefaults.standard.setPassword(value: password.text!)
        UserDefaults.standard.setRegistered(value: true)
        
        }
    }
}
