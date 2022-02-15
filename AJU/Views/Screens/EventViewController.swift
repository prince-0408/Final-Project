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
        
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = floor(screenSize.width * cellScale )
        let cellHeight = floor(screenSize.height * cellScale)
        let instX = ( view.bounds.width - cellWidth ) / 2.0
        let instY = ( view.bounds.height - cellHeight ) / 2.0
        let layout = eventCollectionView!.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight )
        eventCollectionView.contentInset = UIEdgeInsets(top: instY , left: instX , bottom: instY, right: instX )
        eventCollectionView.dataSource = self
        eventCollectionView.dataSource = self
        
    }
}
extension EventViewController : UICollectionViewDataSource  {
    
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
        return cell
    
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


       
