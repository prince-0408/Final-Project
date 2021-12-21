
import UIKit
import WebKit

class EventsViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://arkajainuniversity.ac.in/our-campus/fests-functions-at-aju/")
        webView.load(URLRequest(url: url!))
    }
   
    @IBAction func showUpcomingEvents(_ sender: UIButton) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(identifier: "upcomingEvent")
//        vc.modalPresentationStyle = .overFullScreen
//        present(vc, animated: true)
    }
    


}
