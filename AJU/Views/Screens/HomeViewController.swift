
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ProgressHUD.show("Loading")
        self.title = String(format: "Welcome %@", UserDefaults.standard.getUserName())

    }
        
    @IBAction func settingButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "setting")
        // vc.modalPresentationStyle = .overFullScreen
       present(vc, animated: true)
        
    }
    
    @IBAction func timeTableBtn(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(identifier: "timeTable")
//        vc.modalPresentationStyle = .overFullScreen
//       present(vc, animated: true)
    }
}
