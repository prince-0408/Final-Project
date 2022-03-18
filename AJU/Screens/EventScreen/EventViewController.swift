import UIKit
import Lottie

class EventViewController: UIViewController {

    @IBOutlet weak var eventCollectionView: UICollectionView!
    @IBOutlet weak var animationView: AnimationView!
    var events = Events.FetchEvents()
    var cellScale : CGFloat = 0.6
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        lottieAnimation()
        
        eventCollectionView.dataSource = self
        eventCollectionView.delegate = self
        
    }
}
extension EventViewController : UICollectionViewDataSource, UICollectionViewDelegate  {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return events.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventCollectionViewCell", for: indexPath) as! EventCollectionViewCell
        
        let event = events[indexPath.item]
        cell.event = event
        cell.backgroundColor = UIColor.black
        cell.layer.borderWidth = 1
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowRadius = 2.0
        cell.layer.cornerRadius = 10
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 2.0, height: 4.0)
        cell.layer.shadowRadius = 2.0
        return cell
    }
    // Event Details
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let VC = mainStoryBoard.instantiateViewController(identifier: "EventDetailsViewController") as! EventDetailsViewController
        VC.eventNme = Events.FetchEvents()[indexPath.row].title
        VC.eventDetail = Events.FetchEvents()[indexPath.row].eventDetails
        VC.eventimg = Events.FetchEvents()[indexPath.row].imageEvents
        self.navigationController?.present(VC, animated: true)
    }
    func lottieAnimation() {
        
        let animationview = AnimationView(name: "calendar-event")
        animationview.frame = CGRect(x: 0, y: 50, width: 390, height: 210)
        animationview.contentMode = .scaleAspectFit
        view.addSubview(animationview)
        animationview.play()
        animationview.loopMode = .loop
    }
}


       
