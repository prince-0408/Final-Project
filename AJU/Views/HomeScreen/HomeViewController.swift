
import UIKit
import MBCircularProgressBar
import Lottie

class HomeViewController: UIViewController {
    
    @IBOutlet weak var quotesCollectionView: UICollectionView!
    
    @IBOutlet weak var progressView: MBCircularProgressBarView!
    
    @IBOutlet weak var animationView: AnimationView!
    
    var quotes = Quotes.FetchQuotes()
    var cellScale : CGFloat = 0.6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quotesCollectionView.dataSource = self
    
        lottieAnimation()
        
        if let username = UserDefaults.standard.getUserName() {
            self.title = String(format: "Welcome %@", username)
        }
    }

    
    @IBAction func timeTableBtn(_ sender: Any) {

    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 10) {
            self.progressView.value = 75
        }
    }
    func lottieAnimation() {
        
        let animationview = AnimationView(name: "Hello")
        animationview.frame = CGRect(x: 0, y: 0, width: 390, height: 295)
        animationview.contentMode = .scaleAspectFit
        view.addSubview(animationview)
        animationview.play()
        animationview.loopMode = .loop

        }
}
    extension HomeViewController : UICollectionViewDataSource  {
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return quotes.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuotesCell", for: indexPath) as! QuotesCollectionViewCell
            let quote = quotes[indexPath.item]
            cell.quote = quote
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
    }

    



