

import UIKit
import nanopb
import SwiftUI
import Lottie

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var collegename: UITextField!
    @IBOutlet weak var branchName: UITextField!
    @IBOutlet weak var academicYear: UITextField!
    @IBOutlet weak var rollNumber: UITextField!
    
    @IBOutlet weak var animationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        lottieAnimation()
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
    if email.text!.isEmpty || name.text!.isEmpty || password.text!.isEmpty || collegename.text!.isEmpty || branchName.text!.isEmpty || academicYear.text!.isEmpty || rollNumber.text!.isEmpty {
    } else {
        UserDefaults.standard.setEmail(value: email.text!)
        UserDefaults.standard.setUserName(value: name.text!)
        UserDefaults.standard.setPassword(value: password.text!)
        UserDefaults.standard.setRegistered(value: true)
        }
    }
    func lottieAnimation() {
        let animationview = AnimationView(name: "team")
        animationview.frame = CGRect(x: 0, y: 0, width: 390, height: 295)
        //animationview.center = self.view.center
        animationview.contentMode = .scaleAspectFit
        view.addSubview(animationview)
        animationview.play()
        animationview.loopMode = .loop
    }
}
