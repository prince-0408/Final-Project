

import UIKit
import FirebaseAuth
import Firebase
import nanopb
import SwiftUI



class SignUpViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var collegename: UITextField!
    @IBOutlet weak var branchName: UITextField!
    @IBOutlet weak var academicYear: UITextField!
    @IBOutlet weak var rollNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func SignUpTapped(_ sender: Any) {
       
        validateUserInput()
        
        ProgressHUD.show("Loading")
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            ProgressHUD.dismiss()
        }
    }
    @IBAction func CreateAccount(_ sender: Any) {

    }
    
func validateUserInput() {
    if email.text!.isEmpty || name.text!.isEmpty || password.text!.isEmpty {
    
    } else {
        UserDefaults.standard.setEmail(value: email.text!)
        UserDefaults.standard.setUserName(value: name.text!)
        UserDefaults.standard.setPassword(value: password.text!)
        UserDefaults.standard.setRegistered(value: true)
        
        }
    }
}
