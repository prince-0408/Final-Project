

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
           
            if validateUserInput(){
                //ProgressHUD.show("Loading")
                //DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                    if Utils.shared.isUserRegistered(username: self.email.text!){
                        self.showAlert(message: "User already registered", title: "Error")
                        return
                    }
                    UserDefaults.standard.setUserData(value: ["email":self.email.text!, "name":self.name.text!, "password":self.password.text!, "collegename":self.collegename.text!], username: self.email.text!)
                    //ProgressHUD.dismiss()
               // }
            } else {
                self.showAlert(message: "Invalid users details!", title: "Error")
            }
            
            
        }

    @IBAction func CreateAccount(_ sender: Any) {

    }
    
    func validateUserInput() -> Bool {
        if email.text!.isEmpty || name.text!.isEmpty || password.text!.isEmpty || collegename.text!.isEmpty || branchName.text!.isEmpty || academicYear.text!.isEmpty || rollNumber.text!.isEmpty {
            return false
        }
        return true
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
