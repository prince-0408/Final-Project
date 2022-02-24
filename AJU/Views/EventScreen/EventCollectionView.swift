
import UIKit

class EventCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var backgroundColorView: UIView!

    var event : Events! {
        didSet {
            self.updateUI ()
        }
    }
    
    func updateUI() {
        if let event = event {
            eventImageView.image = event.imageEvents
            eventName.text = event.title
            backgroundColorView.backgroundColor = event.color
        } else {
            eventImageView.image = nil
            eventName.text = nil
            backgroundColorView.backgroundColor = nil
        }
    }
}

