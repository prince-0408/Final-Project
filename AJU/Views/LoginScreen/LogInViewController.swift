//
//  LogInViewController.swift
//  AJU
//
//  Created by Anand Yadav on 21/10/21.
//

import UIKit

class LogInViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var rollno: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "TabBarView")
        vc.modalPresentationStyle = .overFullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
    
    @IBAction func SignUpTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "SignUp")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "forgotPwd")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
}
