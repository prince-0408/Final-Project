import UIKit

class EventDetailsViewController: UIViewController {
    
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventDes: UILabel!
        
    var eventNme : String?
    var eventimg : UIImage?
    var eventDetail : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventName.text = eventNme
        eventImage.image = eventimg
        eventDes.text = eventDetail
    }
}

