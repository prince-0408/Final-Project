import UIKit
import Lottie


class ResultViewController: UIViewController {
    
    @IBOutlet weak var showResultBtn: UIButton!
    @IBOutlet weak var getName: UITextField!
    @IBOutlet weak var getEnrollmentNumber: UITextField!
    @IBOutlet weak var getSemester: UITextField!
    @IBOutlet weak var animationView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        lottieAnimation()
    }
   
    func lottieAnimation() {
        
        let animationview = AnimationView(name: "back-to-school")
        animationview.frame = CGRect(x: 0, y: 0, width: 390, height: 280)
        animationview.contentMode = .scaleAspectFit
        view.addSubview(animationview)
        animationview.play()
        animationview.loopMode = .loop
    }
}
