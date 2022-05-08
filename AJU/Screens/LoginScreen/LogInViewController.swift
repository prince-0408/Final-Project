
import AuthenticationServices
import UIKit
import SwiftUI
import Lottie


class LogInViewController: UIViewController {
    
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    @IBOutlet weak var animationView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lottieAnimation()
        
    }
    
    @IBAction func loginTapped(_ sender: Any) {
    //        ProgressHUD.show("Loading")
    //        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
    //            ProgressHUD.dismiss()
    //        }
            let userDetails:[String:String] = UserDefaults.standard.getUserDetails(value: email.text!)
            if (password.text! == userDetails["password"]) {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(identifier: "TabBarView")
                vc.modalPresentationStyle = .overFullScreen
                vc.modalTransitionStyle = .flipHorizontal
                present(vc, animated: true)
            } else {
                self.showAlert(message: "Invalid Username/Password", title: "Error")
            }
        }

    
    @IBAction func CreateAccount(_ sender: Any) {

    }
    @IBAction func forgotPasswordTapped(_ sender: Any) {

    }
    
    func lottieAnimation() {
        
        let animationview = AnimationView(name: "login")
        animationview.frame = CGRect(x: 0, y: 0, width: 390, height: 295)
        animationview.contentMode = .scaleAspectFit
        view.addSubview(animationview)
        animationview.play()
        animationview.loopMode = .loop
    }
    
}
