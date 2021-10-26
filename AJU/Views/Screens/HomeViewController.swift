
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
        
    @IBAction func settingButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "setting")
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true)
    }
}
