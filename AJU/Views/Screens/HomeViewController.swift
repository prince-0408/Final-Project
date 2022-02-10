
import UIKit
import MBCircularProgressBar
import Lottie

class HomeViewController: UIViewController {
    
    @IBOutlet weak var progressView: MBCircularProgressBarView!
    
    @IBOutlet weak var animationView: AnimationView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lottieAnimation()
        
        self.title = String(format: "Welcome %@", UserDefaults.standard.getUserName())

    }
    
    @IBAction func timeTableBtn(_ sender: Any) {

    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 10) {
            self.progressView.value = 50
        }
    }
    func lottieAnimation() {
        
        let animationview = AnimationView(name: "Hello")
        animationview.frame = CGRect(x: 0, y: 0, width: 390, height: 295)
        //animationview.center = self.view.center
        animationview.contentMode = .scaleAspectFit
        view.addSubview(animationview)
        animationview.play()
        animationview.loopMode = .loop
    }
   
}


