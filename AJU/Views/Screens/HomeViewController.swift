
import UIKit
import MBCircularProgressBar

class HomeViewController: UIViewController {
    
    @IBOutlet weak var progressView: MBCircularProgressBarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = String(format: "Welcome %@", UserDefaults.standard.getUserName())

    }
    
    @IBAction func timeTableBtn(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(identifier: "timeTable")
//        vc.modalPresentationStyle = .overFullScreen
//       present(vc, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 10) {
            self.progressView.value = 50
        }
    }
    
}
