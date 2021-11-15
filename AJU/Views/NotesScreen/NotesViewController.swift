//
//  NotesViewController.swift
//  AJU
//
//  Created by Anand Yadav on 25/10/21.
//

import UIKit
import DropDown

class NotesViewController: UIViewController {
    
    @IBOutlet weak var vmDropDown: UIView!
    @IBOutlet weak var lblTitle: UILabel!

    let dropDown = DropDown()
    let CourseArray = ["Btech", "BBA"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = "Select Course"
        dropDown.anchorView = vmDropDown
        dropDown.dataSource = CourseArray
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.topOffset = CGPoint(x: 0, y:-(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.direction = .bottom
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
          print("Selected item: \(item) at index: \(index)")
            self.lblTitle.text = CourseArray[index]
        }

    }
    
    @IBAction func showPdf(_ sender: Any) {
        
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "showPdf")
            vc.modalPresentationStyle = .popover
            present(vc, animated: true)
    }
    @IBAction func UploadPdf(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "uploadNotes")
        vc.modalPresentationStyle = .popover
        present(vc, animated: true)
    }
    
    @IBAction func ShowCoursesOption(_ sender:Any) {
        dropDown.show()
    }
    
    
}
