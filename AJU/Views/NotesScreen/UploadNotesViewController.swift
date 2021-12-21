

import UIKit
import DropDown

class UploadNotesViewController: UIViewController {
    @IBOutlet weak var vcDropDown: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var vbDropDown: UIView!
    @IBOutlet weak var lblTitle1: UILabel!
    @IBOutlet weak var vsDropDown: UIView!
    @IBOutlet weak var lblTitle2: UILabel!
    
    
    let dropDown = DropDown()
    let CourseArray = ["Btech", "POLY", "BCA"]
    let dropDown1 = DropDown()
    let BranchArray = ["CSE", "ECE", "IT"]
    let dropDown2 = DropDown()
    let SemesterArray = ["First Semester", "Second Semester", "Fourth Semester", "Fifth Semester", "Sixth Semester", "Seventh Semester", "Eighth Semester", "Syllabus"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = "Select Course"
        dropDown.anchorView = vcDropDown
        dropDown.dataSource = CourseArray
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.topOffset = CGPoint(x: 0, y:-(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.direction = .bottom
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
          print("Selected item: \(item) at index: \(index)")
            self.lblTitle.text = CourseArray[index]
        }
        
        lblTitle1.text = "Select Branch"
        dropDown1.anchorView = vbDropDown
        dropDown1.dataSource = BranchArray
        dropDown1.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown1.topOffset = CGPoint(x: 0, y:-(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown1.direction = .bottom
        dropDown1.selectionAction = { [unowned self] (index: Int, item: String) in
          print("Selected item: \(item) at index: \(index)")
            self.lblTitle1.text = BranchArray[index]
        }
        lblTitle2.text = "Select Semester"
        dropDown2.anchorView = vsDropDown
        dropDown2.dataSource = SemesterArray
        dropDown2.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown2.topOffset = CGPoint(x: 0, y:-(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown2.direction = .bottom
        dropDown2.selectionAction = { [unowned self] (index: Int, item: String) in
          print("Selected item: \(item) at index: \(index)")
            self.lblTitle2.text = SemesterArray[index]
        }

        
        

        // Do any additional setup after loading the view.
    }
    @IBAction func backButtonTapped(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(identifier: "TabBarView")
//        vc.modalPresentationStyle = .overFullScreen
//        present(vc, animated: true)
    }
    
    @IBAction func SelectCourseOption(_ sender: Any) {
        dropDown.show()
    }
    @IBAction func SelectBranchOption(_ sender: Any) {
        dropDown1.show()
    }
    @IBAction func SelectSemesterOption(_ sender: Any) {
        dropDown2.show()
    }
    

}
